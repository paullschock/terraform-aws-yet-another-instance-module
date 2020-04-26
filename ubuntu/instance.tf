resource "aws_instance" "ubuntu" {
  count         = var.instance_create == true && var.instance_count > 0 ? var.instance_count : 0
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type == "" ? "t3a.micro" : var.instance_type

  tags = {
    Name            = "ubuntu-${random_pet.ubuntu.id}"
    ubuntu_ami_name = local.ubuntu_ami_name
  }
}

locals {
  ubuntu_ami_name = element("${reverse("${split("/", "${data.aws_ami.ubuntu.name}")}")}", 0)
}

