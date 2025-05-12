locals {
  kubernetes_namespace_names = ["ns1", "ns2", "ns3", "ns4"]
}

resource "kubernetes_namespace" "this" {
  for_each = toset(local.kubernetes_namespace_names)
  metadata {
    labels = {
      color = "green"
    }

    name = each.value
  }
}
