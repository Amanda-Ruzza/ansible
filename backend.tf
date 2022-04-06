terraform {
  backend "s3" {
    bucket = "i-hope-this-works-454545"
    key    = "projects/ansible/ec2/terraform.tfstates"
    #dynamodb_table = "terraform-lock"
  }
}