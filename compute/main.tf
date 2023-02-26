
# resource "aws_instance" "web" {
#   ami           = var.ami
#   instance_type = var.instance_type[2]
#   user_data     = <<-EOF
# #!/bin/bash
# sudo yum update -y
# sudo yum install httpd -y
# sudo systemctl start httpd
# sudo systemctl enable httpd
# sudo bash -c 'echo your very first web server > /var/www/html/index.html'
# EOF

# }


# resource "aws_instance" "webserver" {
#   ami               = var.amis
#   availability_zone = "us-east-1a"
#   instance_type     = var.instance_types
# }

# variable "instance_types" {
#   description = "variable for my web instance server"
#   type        = string
#   default     = "t2.medium"
#   #sensitive = false

# }

# variable "amis" {
#   description = "variable for my web instance server"
#   type        = string
#   default     = "ami-0f1a5f5ada0e7da53"
#   #sensitive = false

# }
































# resource "aws_instance" "webserver" {
#   ami = "ami-0735c191cf914754d"
#   availability_zones = var.az[1]    
#   instance_type = var.instance_type["ca-central-1"]
# }

# variable "az" {
#     type = list
#     default = ["us-west-1a", "us-west-1b", "us-west-1c"] 
# }



# variable "instance_type" {
#     type = map
#     default = {
#         dev = "t2.micro"
#         us-west-2 = "t2.xlarge"
#         ca-central-1 = "t3.medium"
#     }

# }