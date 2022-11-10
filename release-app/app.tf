resource "helm_release" "nginx" {
  name       = "nginx"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx"
#   version    = var.blotout_app_release_version
  namespace = "default"
  
#   set {
#     name  = "nameOverride"
#     value = "airbyte"
#   }

}