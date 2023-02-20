
resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type[2]
  associate_public_ip_address = var.associate_public_ip_address
  user_data     = <<-EOF
#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo bash -c 'echo your very first web server > /var/www/html/index.html'
EOF

  tags = var.tags
}





























#resource "aws_instance" "webserver" {
#   ami = "ami-0735c191cf914754d"
#   availability_zone = var.az[1]
#   instance_type = var.types["ca-central-1"]
# }

# variable "az" {
#     type = list
#     default = ["us-west-1a", "us-west-1b", "us-west-1c"] 
# }

# variable "types" {
#     type = map
#     default = {
#         us-east-1 = "t2.micro"
#         us-west-2 = "t2.xlarge"
#         ca-central-1 = "t3.medium"
#     }
  
# }