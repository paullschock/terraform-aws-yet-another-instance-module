module "ubuntu" {
  source          = "./instance/"
  aws_region      = var.aws_region
  ami_id          = data.aws_ami.ubuntu.id
  instance_create = var.instance_create_ubuntu


}

locals {
  instance_name = "${var.stack != "" ? "${var.stack}-" : ""}${var.os_name != "" ? "${var.os_name}-" : ""}${count.index}${var.randomness != "" ? "-${var.randomness}" : random_pet.backup.id}"
}
