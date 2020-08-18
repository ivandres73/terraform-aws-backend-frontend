module "network" {
  source   = "./network"
  name     = var.name
  vpc_cidr = var.vpc_cidr

  cidrs = {
    public1  = "10.0.1.0/24"
    public2  = "10.0.2.0/24"
    private1 = "10.0.3.0/24"
    private2 = "10.0.4.0/24"
    rds1     = "10.0.5.0/24"
    rds2     = "10.0.6.0/24"
  }
}

# resource "aws_instance" "bastion" {
#   instance_type          = var.instance_type
#   ami                    = data.
#   key_name               = var.key_name
#   vpc_security_group_ids = [aws_security_group.security_group.id]
#   subnet_id              = module.network.public1_subnet_id

#   tags = {
#     Name = "${var.name}-bastion"
#   }
# }