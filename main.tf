resource "jenkins_folder" "folders" {
  count = length(var.folders)
  name = element(var.folders, count.index)
}

resource "jenkins_job" "job" {
  depends_on = [jenkins_folder.folders]

  count = length(var.jobs)
  name     = lookup(element(var.jobs, count.index), "name", null )
  folder   = "/job/${lookup(element(var.jobs, count.index), "folder", null )}"

  template = templatefile("${path.module}/sb-job.xml", {
    repo_url = lookup(element(var.jobs, count.index), "repo_url", null )
    name = lookup(element(var.jobs, count.index), "name", null )
  })

  /*lifecycle {
    ignore_changes = [template]
  }*/

}

data "aws_instance" "jenkins" {
  instance_id = "i-0843f312a46cad17a"
}

resource "aws_route53_record" "www" {
  zone_id = "Z00402221E1TOA6JZJNT9"
  name    = "jenkins.devopsa.online"
  type    = "A"
  ttl     = 300
  records = [data.aws_instance.jenkins.public_ip]
}

