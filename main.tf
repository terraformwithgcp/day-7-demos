
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


module "vm_instance_template" {
  source  = "terraform-google-modules/vm/google//modules/instance_template"
#   version = "13.7.0"
  # insert the 2 required variables here
  project_id                   = var.project-id
  region                       = var.region
  subnetwork                   = "custom-subnet"
  network = module.network.network_name
  machine_type = "f1-micro"
  source_image_family = "debian-11"
  source_image_project = "debian-cloud"
  subnetwork_project = var.project-id
}




module "vm_compute_instance" {
  source  = "terraform-google-modules/vm/google//modules/compute_instance"
  # insert the 1 required variable here
  instance_template = module.vm_instance_template.self_link
#   project_id        = var.project-id
  zone              = "us-central1-a"
}

# 