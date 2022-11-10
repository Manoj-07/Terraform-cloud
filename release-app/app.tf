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
resource "helm_release" "http-server" {
  name       = "http-server"
  repository = "https://dunefro.github.io/http-server"
  chart      = "http-server"
  version    = var.http-server["chart_version"]
  namespace = "default"
  
  set {
    name  = "image.tag"
    value = var.http-server["image_version"]
  }

}