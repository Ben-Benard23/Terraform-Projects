output "public_ip" {
  value = aws_instance.web.public_ip
  sensitive = true
  
}

output "private_dns" {
  value = aws_instance.web.private_dns

}

output "arn" {
  value = aws_instance.web.arn

}
