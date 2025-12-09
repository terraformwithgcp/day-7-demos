provider "random" {
  
}

provider "google" {
    project = var.project-id
    region  = var.region
  
}



locals {
  bucketname1 = "localbucketnameheresomethinghimanshu"
}

resource "google_storage_bucket" "st1" {
    name     = local.bucketname1
    location = var.region
  
}




#resource "google_compute_instance" "vm1" {
#     # count = var.numberofvms
# #  name         = "${var.vm-name}-${count.index+1}"
#     name = "vm1-mod"
#  machine_type = var.vm-type
# #  zone         = var.vm-zone
#  zone         = "us-central1-b"


#  boot_disk {
#    initialize_params {
#      image = var.os-name
#    }
#  }

#  #lifecycle for the resource to prevent accidental deletion
#  lifecycle {
# #    prevent_destroy = true
#     # ignore_changes = [ name ]
#     # create_before_destroy = true
#     replace_triggered_by = [ google_storage_bucket.st1 ]
#  }



#  // Local SSD disk
#  network_interface {
#    network = var.network-name


#    access_config {
#      // Ephemeral public IP
#    }
#  }
# }

# resource "google_storage_bucket"   "st1" {
#     name     = "my-first-bucket-12345-mod1"
#     location = var.region
  
# }
