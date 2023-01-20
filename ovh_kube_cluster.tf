resource "ovh_cloud_project_kube" "cluster" {
   service_name = "${var.OVH_PROJECT_ID}"
   name         = "${var.K8S_CLUSTER_NAME}"
   region       = "${var.K8S_REGION}"
   version      = "${var.K8S_VERSION}"
}

resource "ovh_cloud_project_kube_nodepool" "pool" {
   service_name  = "${var.OVH_PROJECT_ID}"
   kube_id       = ovh_cloud_project_kube.cluster.id
   name          = "${var.K8S_POOL_NAME}" # //Warning: "_" char is not allowed!
   flavor_name   = "${var.K8S_INSTANCE_TYPE}"
   desired_nodes = 1
   max_nodes     = 2
   min_nodes     = 1
   autoscale     = true
   }