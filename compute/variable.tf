variable "ami" {
    description = "variable for my web instance server"
    type = string
    default = "ami-0f1a5f5ada0e7da53"
    #sensitive = false
  
}

variable "instance_type" {
    description = "variable for my web instance server"
    type = list
    default = ["t2.medium","t2.micro", "t3.nano"]
    sensitive = false
  
}

variable "tags" {
    description = "variable for my web instance tags"
    type = map
    default = {
        Name = "webserver"
        project = "terraform"
        Environment = "Prod"
    }
   
  
}

variable "associate_public_ip_address" {
    description = "variable for associate_public_ip_address. expects 0 or 1"
    type = bool
    default = "true"
   
}

