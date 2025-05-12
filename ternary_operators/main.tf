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
