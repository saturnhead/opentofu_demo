
resource "kubernetes_namespace" "this" {
  metadata {
    labels = {
      color = "green"
    }

    name = var.namespace_name
  }
}

resource "kubernetes_pod" "this" {
  metadata {
    name      = var.pod_name
    namespace = kubernetes_namespace.this.metadata.0.name
  }

  spec {
    container {
      image = "nginx:1.21.6"
      name  = "example"

      port {
        container_port = 80
      }
    }
  }
}
