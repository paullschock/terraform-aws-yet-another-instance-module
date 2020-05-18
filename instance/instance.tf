resource "aws_instance" "instance" {
  count         = var.instance_create == true && var.instance_count > 0 ? var.instance_count : 0
  ami           = var.ami_id
  instance_type = var.instance_type == "" ? "t3a.micro" : var.instance_type

  tags = {
    Name            = "${var.stack != "" ? "${var.stack}-" : "" }${var.os_name != "" ? "${var.os_name}-" : "" }${count.index}${var.randomness != "-${var.randomness}" : ""}"
    ami_name = var.ami_name
  }

  lifecycle {
    ignore_changes = ["${var.ignore_ami_changes == true ? "ami" : ""}"]
  }

}


