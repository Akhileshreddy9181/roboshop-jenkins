variable "folders" {
  default = [ "Infra", "CI-Pipeline"]
}
variable "jobs" {
  default = [
    { name = "roboshop", folder = "Infra", repo_url = "https://github.com/akhileshreddy9181/roboshop-infra" },
    { name = "frontend", folder = "CI-Pipeline", repo_url = "https://github.com/akhileshreddy9181/frontend" },
    { name = "cart", folder = "CI-Pipeline", repo_url = "https://github.com/akhileshreddy9181/cart" },
    { name = "catalogue", folder = "CI-Pipeline", repo_url = "https://github.com/akhileshreddy9181/catalogue.git" },
    { name = "user", folder = "CI-Pipeline", repo_url = "https://github.com/akhileshreddy9181/user" },
    { name = "shipping", folder = "CI-Pipeline", repo_url = "https://github.com/akhileshreddy9181/shipping" },
    { name = "payment", folder = "CI-Pipeline", repo_url = "https://github.com/akhileshreddy9181/payment" }
  ]

}

variable "force" {
  default = false
}