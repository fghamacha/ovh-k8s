terraform {
  required_providers {
    ovh = {
      source  = "ovh/ovh"
    }
  }
}

provider "ovh" {
  endpoint           = "ovh-eu"
  application_key    = var.OVH_APPLICATION_KEY
  application_secret = var.OVH_APPLICATION_SECRET
  consumer_key       = var.OVH_CONSUMER_KEY
}