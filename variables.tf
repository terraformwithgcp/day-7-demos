
variable "project-id" {
    type = string 
}
variable "region" {
    type = string
  
}







# variable "env-based-region" {
#     type = map(string)
#     default = {
#       dev  = "us-central1"
#       prod = "us-east1"
#     }
  
# }

# variable "env" {
#     type    = string
#     # default = "dev"
  
# }
# output "env-out" {
#     value = lookup((var.env-based-region), var.env, "us-west1")
  
# }






# output "var1" {
#     # value = max(5 ,6 ,9)
#     # value = pow(2,3)
#     # value = upper("hello world")
#     # value = join(" ", ["hello", "world", "from", "terraform"])
#     value = distinct(["us-east1", "us-west1", "us-east1", "us-central1"])
  
# }










# variable "numberofvms" {
#     type = number
#     validation {
#       condition = var.numberofvms >=1 && var.numberofvms <=5
#         error_message = "Number of VMs must be between 1 and 5"
#     }
  
# }

# # variable "var1" {
# #     type = string
# #     validation {
# #       condition = false
# #     }
  
# # }





# 
# variable "region" {
#     type = string
#     validation {
#         condition = contains(["us-central1", "us-east1", "us-west1"], var.region)
#         error_message = "Region must be from us-central1 or us-east1 or us-west1"
#     }
  
# }
# variable "vm-name" {
#     type = string
  
# }
# variable "vm-type" {
#     type = string
  
# }
# variable "vm-zone" {
#     type = string
  
# }
# variable "os-name" {
#     type = string
  
# }
# variable "network-name" {
#     type = string
  
# }