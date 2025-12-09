variable "numberofvms" {
    type = number
    validation {
      condition = var.numberofvms >=1 && var.numberofvms <=5
        error_message = "Number of VMs must be between 1 and 5"
    }
  
}

# variable "var1" {
#     type = string
#     validation {
#       condition = false
#     }
  
# }





variable "project-id" {
    type = string 
}
variable "region" {
    type = string
    validation {
        condition = contains(["us-central1", "us-east1", "us-west1"], var.region)
        error_message = "Region must be from us-central1 or us-east1 or us-west1"
    }
  
}
variable "vm-name" {
    type = string
  
}
variable "vm-type" {
    type = string
  
}
variable "vm-zone" {
    type = string
  
}
variable "os-name" {
    type = string
  
}
variable "network-name" {
    type = string
  
}