
module "network" {
  source  = "terraform-google-modules/network/google"
#   version = "13.0.0"
  # insert the 3 required variables here
  project_id = var.project-id
#   region     = var.region
    network_name = "custom-network"
    subnets = [
        {
            subnet_name           = "custom-subnet"
            subnet_ip             = "10.0.0.0/24"
            subnet_region         = var.region
        }

    ]
}






# module "vm_compute_instance" {
#   source  = "terraform-google-modules/vm/google//modules/compute_instance"
#   # insert the 1 required variable here
# }

# module "vm_instance_template" {
#   source  = "terraform-google-modules/vm/google//modules/instance_template"
# #   version = "13.7.0"
#   # insert the 2 required variables here
#   project_id                   = var.project_id
#   region                       = var.region
#   subnetwork                   = var.subnetwork
#   stack_type                   = "IPV4_ONLY"
#   service_account              = var.service_account
#   name_prefix                  = "simple"
#   tags                         = var.tags
#   labels                       = var.labels
#   access_config                = [local.access_config]
#   enable_nested_virtualization = var.enable_nested_virtualization
#   threads_per_core             = var.threads_per_core
# }