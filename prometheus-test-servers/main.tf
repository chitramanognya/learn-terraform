resource "aws_spot_instance_request" "node1" {
  ami           = "ami-0ed0a319e81191f30"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-00710f89f3810d79e"]
  wait_for_fulltime = true

  tags = {
    Name = "prom-test-server"
  }
}

resource "aws_spot_instance_request" "node2" {
  ami           = "ami-0ed0a319e81191f30"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-00710f89f3810d79e"]
  
  tags = {
    Name = "prom-test-node"
  }
}