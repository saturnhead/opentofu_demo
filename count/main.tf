# resource "kubernetes_namespace" "this" {
#   count = 3 # for i in range(3): i = 0, i = 1, i = 2
#   metadata {
#     labels = {
#       color = "green"
#     }

#     name = "ns-${count.index}"
#   }
# }

locals {
  kubernetes_namespace_names = ["ns1", "ns2", "ns3"]
}

resource "kubernetes_namespace" "this" {
  count = length(local.kubernetes_namespace_names) # for i in range(3): i = 0, i = 1, i = 2
  metadata {
    labels = {
      color = "green"
    }

    name = local.kubernetes_namespace_names[count.index]
  }
}
