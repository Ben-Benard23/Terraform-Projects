# resource "aws_instance" "webserver" {
#   ami = "ami-0735c191cf914754d"
#   availability_zone = "us-west-2a"
#   instance_type = "t2.medium"
# }


# output "public_ip" {
#     value = aws_instance.webserver.public_ip
  
# }



# Using string:
#              terraform apply -var="ami=ami-0735c191cf914754d"

# Using list:
#               terraform apply -var='instance_type=["t2.medium","t2.micro", "t3.nano"]'

# Using map:                     
#  	terraform apply -var='tags={"Name":"Webserver","Project":"terraform", "Environment":"prod"}'
                              


# export TF_VAR_ami=ami-0735c191cf914754d