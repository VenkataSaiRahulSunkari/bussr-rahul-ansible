data "aws_instance" "app" {
  filter {
    name   = "tag:Name"
    values = ["app-server"]
  }
}