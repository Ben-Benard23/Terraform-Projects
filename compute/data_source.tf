
# ##### Data_sources for ami
# ####Search for ami int he terraform bbible and get to data sources for ami

# data "aws_ami" "linux2" {
#   most_recent = true

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   filter {
#     name = "name"
#     values = ["amzn2-ami-kernel-5.10-hvm-2.0.20230207.0-x86_64-gp2"]
 
#   }

#   owners = ["amazon"] 
# }

# resource "aws_instance" "web" {
#   ami           = data.aws_ami.linux2.id
#   instance_type = "t3.micro"

#   tags = {
#     Name = "HelloWorld"
#   }
# }


# ## Data sorce for vpc_id


# data "aws_vpc" "selected" {
#   id = "vpc-03610b40c03978581"
# }

# output "vpc-arn" {
#     value = data.aws_vpc.selected.arn
  
# }

# output "ipv6" {
#     value = data.aws_vpc.selected.ipv6_association_id
  
# }


# resource "aws_security_group" "web_server_sg_tf" {
#  name        = "web-server-sg-tf"
#  description = "Allow HTTPS to web server"
#  vpc_id      = data.aws_vpc.selected.id

# ingress {
#    description = "HTTPS ingress"
#    from_port   = 443
#    to_port     = 443
#    protocol    = "tcp"
#    cidr_blocks = [ data.aws_vpc.selected.cidr_block ]
#  }

# ingress {
#   cidr_blocks = ["0.0.0.0/0"]
#   description = "http ingress"
#   protocol    = "tcp"
#   from_port = 80
#   to_port = 80
# }



# egress {
#    from_port   = 0
#    to_port     = 0
#    protocol    = "-1"
#    cidr_blocks = ["0.0.0.0/0"]
#  }
# }





# # data "aws_vpc" "name" {
# #   filter {
# #         name = "tag:Name"
# #         values = ["project-vpc"]
# # }
# # }


# # output "data-vpc" {
# #     value = data.aws_vpc.name.arn
  
# # }

# # output "data-vpc2" {
# #     value = data.aws_vpc.name.cidr_block
  
# # }
# # resource "aws_subnet" "name" {
# #   vpc_id = data.aws_vpc.name.id
# #   availability_zone = "us-east-1a"
# #   cidr_block = "10.0.60.0/24"
# #   tags = {
# #     "Name" = "test_vpc"
# #   }
# # }

