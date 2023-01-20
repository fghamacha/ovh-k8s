output "kubeconfig" {
  value = ovh_cloud_project_kube.cluster.kubeconfig
  sensitive = true
}