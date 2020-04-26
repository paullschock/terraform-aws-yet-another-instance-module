resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_size == "" ? t3a.micro : var.instance_size

  tags = {
    Name = "ubuntu"
  }
}
