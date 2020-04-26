data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"] # Latest LTS
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "random_pet" "ubuntu" {
  keepers = {
    # Generate a new pet name each time we switch to a new AMI id
    ami_id = data.aws_ami.ubuntu.id
  }
}