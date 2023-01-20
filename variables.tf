variable "OVH_APPLICATION_KEY" {}
variable "OVH_APPLICATION_SECRET" {}
variable "OVH_CONSUMER_KEY" {}

variable "OVH_PROJECT_ID" {} # ID of the OVH Public Cloud Project
variable "K8S_VERSION" {}
variable "K8S_INSTANCE_TYPE" {} # "Type de l'instance à choisir parmis https://www.ovhcloud.com/fr/public-cloud/prices/"
variable "K8S_CLUSTER_NAME" {}
variable "K8S_POOL_NAME" {}

variable "K8S_REGION" {
  type = string
  default = "GRA9"
}