terraform {
  required_version = "0.12.24"
}

# Create a new instance of the latest Ubuntu 14.04 on an
# t2.micro node with an AWS Tag naming it "HelloWorld"


resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_size == "" ? t3a.micro : var.instance_size

  tags = {
    Name = "example"
  }
}
