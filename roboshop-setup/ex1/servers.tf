ta "aws_ami" "ami" {
    most_recent = true
    name_regex = "Centos-8-DevOps-Practice"
    owners     = [973714476881]
}



resource "aws_instance" "frontend" {
    ami                   = data.aws_ami.ami.image_id
    instance_type         ="t3.micro"
    vpc_security_group_ids=["sg-00710f89f3810d79e"]
    tags = {
        Name = "frontend"
    }
}

resource "aws_instance" "frontend" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-00710f89f3810d79e"]
    tags = {
        Name = "frontend"
    }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z05324103C6FB88430WB"
  name    = "frontend-dev.learndevopsb71shop.site"
  type    = "A"
ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "cart" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-00710f89f3810d79e"]
    tags = {
        Name = "cart"
    }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z05324103C6FB88430WB"
  name    = "cart-dev.learndevopsb71shop.site"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "catalogue" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-00710f89f3810d79e"]
    tags = {
        Name = "catalogue"
    }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z05324103C6FB88430WB"
  name    = "catalogue-dev.learndevopsb71shop.site"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "user" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-00710f89f3810d79e"]
    tags = {
        Name = "user"
    }
}

resource "aws_route53_record" "user" {
  zone_id = "Z05324103C6FB88430WB"
  name    = "user-dev.learndevopsb71shop.site"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "shipping" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-00710f89f3810d79e"]
    tags = {
        Name = "shipping"
    }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z05324103C6FB88430WB"
  name    = "shipping-dev.learndevopsb71shop.site"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "payment" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-00710f89f3810d79e"]
    tags = {
        Name = "payment"
    }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z05324103C6FB88430WB"
  name    = "payment-dev.learndevopsb71shop.site"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "mongodb" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-00710f89f3810d79e"]
    tags = {
        Name = "mongodb"
    }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z05324103C6FB88430WB"
  name    = "mongodb-dev.learndevopsb71shop.site"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "mysql" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-00710f89f3810d79e"]
    tags = {
        Name = "mysql"
    }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z05324103C6FB88430WB"
  name    = "mysql-dev.learndevopsb71shop.site"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "redis" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-00710f89f3810d79e"]
    tags = {
        Name = "redis"
    }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z05324103C6FB88430WB"
  name    = "redis-dev.learndevopsb71shop.site"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "rabbitmq" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-00710f89f3810d79e"]
    tags = {
        Name = "rabbitmq"
    }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z05324103C6FB88430WB"
  name    = "rabbitmq-dev.learndevopsb71shop.site"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "dispatch" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-00710f89f3810d79e"]
    tags = {
        Name = "dispatch"
    }
}

resource "aws_route53_record" "dispatch" {
  zone_id = "Z05324103C6FB88430WB"
  name    = "dispatch-dev.learndevopsb71shop.site"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.private_ip]
}
