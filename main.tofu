
resource "kubernetes_namespace" "this" {
  metadata {
    labels = {
      color = "green"
    }

    name = var.namespace_name
  }
}