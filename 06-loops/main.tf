variable "d1" {
    default = 5
    
}
resource "null_resource" "nothing" {
    count = var.d1
}

variable "d2" {
    default = ["fruit, banana"]
}

resource "null_resource" "d2" {
    count = length(var.d2)
}
variable "d3" {
    default = {
         fruit = {
            name = "fruit"
            count = 3
        }
        banana = {
            name = "banana"
            count = 30
        }
    }
}

resource "null_resource" "d2" {
    for_each = var.d3
}