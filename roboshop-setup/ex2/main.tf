data "aws_ami" "ami" {
    most_recent = true
    name_regex = "Centos-8-DevOps-Practice"
    owners     = ["973714476881"]
}



resource "aws_instance" "frontend" {
    count                 = length(var.instances)
    ami                   = data.aws_ami.ami.image_id
    instance_type         = "t3.micro"
    vpc_security_group_ids = ["sg-00710f89f3810d79e"]
}


variable "instances" {
    default = ["cart","catalogue","user","payment","shipping"]
     
    
}

output "public-ip" {
    value = aws_instance.frontend.*.public_ip
}