variable "folders" {
  default = [ "Infra", "CI-Pipeline"]
}
variable "mb-job" {
  default = [
    { name = "frontend", folder = "CI-Pipeline", repo_url = "https://github.com/akhileshreddy9181/frontend" },
    { name = "cart", folder = "CI-Pipeline", repo_url = "https://github.com/akhileshreddy9181/cart" },
    { name = "catalogue", folder = "CI-Pipeline", repo_url = "https://github.com/akhileshreddy9181/catalogue.git" },
    { name = "user", folder = "CI-Pipeline", repo_url = "https://github.com/akhileshreddy9181/user" },
    { name = "shipping", folder = "CI-Pipeline", repo_url = "https://github.com/akhileshreddy9181/shipping" },
    { name = "payment", folder = "CI-Pipeline", repo_url = "https://github.com/akhileshreddy9181/payment" },
    { name = "aws-ssm-param-store", folder = "CI-Pipeline", repo_url = "https://github.com/akhileshreddy9181/aws-ssm-param-store" }
  ]

}

variable "sb-job" {
  default = [
    { name = "roboshop", folder = "Infra", repo_url = "https://github.com/akhileshreddy9181/roboshop-infra", filename = "Jenkinsfile" },
    { name = "App-Deployment", folder = "Infra", repo_url = "https://github.com/akhileshreddy9181/roboshop-ansible", filename = "Jenkinsfile-deployment" },
    { name = "Helm-Deployment", folder = "Infra", repo_url = "https://github.com/akhileshreddy9181/roboshop-helm-chart", filename = "Jenkinsfile" }
  ]
}

variable "force" {
  default = false
}