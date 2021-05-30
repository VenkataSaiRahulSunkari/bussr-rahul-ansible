data "aws_instance" "app" {
  filter {
    name   = "tag:Name"
    values = ["app-server"]
  }
}

output "app-private-ip" {
  value = data.aws_instance.app.private_ip
}