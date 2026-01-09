provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

module "compute" {
  source      = "./modules/compute"

  project_id  = var.project_id
  region      = var.region
  zone        = var.zone

  vm_name     = "demo-vm"
  network_name = "demo-vpc"
  subnet_name  = "demo-subnet"
}
