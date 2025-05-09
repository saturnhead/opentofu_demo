
# resource "kubernetes_namespace" "this" {
#   metadata {
#     labels = {
#       color = "green"
#     }

#     name = var.namespace_name
#   }
# }

# resource "kubernetes_pod" "this" {
#   metadata {
#     name      = var.pod_name
#     namespace = kubernetes_namespace.this.metadata.0.name
#   }

#   spec {
#     container {
#       image = "nginx:1.21.6"
#       name  = "example"

#       port {
#         container_port = 80
#       }
#     }
#   }
# }

locals {
  create_namespace = true
}

resource "kubernetes_namespace" "this" {
  for_each = local.create_namespace ? toset(["ns1"]) : toset([])
  metadata {
    labels = {
      color = "green"
    }

    name = each.value
  }
}
