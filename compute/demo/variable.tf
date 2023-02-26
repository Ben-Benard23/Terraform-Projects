variable "ami" {
  description = "variable for my web instance server"
  type        = string
  default     = "ami-0dfcb1ef8550277af"

}

variable "instance_type" {
  description = "variable for my web instance server"
  type        = list(any)
  default     = ["t2.medium", "t2.micro", "t3.nano"]

}

