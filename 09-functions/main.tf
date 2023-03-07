variable "test" {
    default = {
       "catalogue"= {
           "private_ip" = "172.31.11.71"
        }
       "user"      = {
           "private_ip" = "172.31.7.255"
        }
    }

}

output "test" {
value = var.test
}
