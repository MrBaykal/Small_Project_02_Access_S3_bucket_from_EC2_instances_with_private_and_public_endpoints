resource "aws_security_group" "bastion-host-sg" {
    # name = "bastion host security group"
    name = "${local.prefix}-ssh_bastion"
    description = "allow ssh to bastion host"
    vpc_id = var.vpc_cidr.id

    tags = local.common_tags

    ingress {
        protocol = "tcp"
        from_port = 22
        to_port = 22
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        protocol = "tcp"
        from_port = 80
        to_port = 80
        cidr_blocks = ["0.0.0.0/0"]

    }

    egress {
        protocol = "tcp"
        from_port = 443
        to_port = 443
        cidr_blocks = ["0.0.0.0/0"]
    }     
  
}