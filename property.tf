resource "akamai_cp_code" "my_cp_code" {
  name        = "mabdulba-Cpcodev3"
  contract_id = "1-3CV382"
  group_id    = "18405"
  product_id  = "prd_SPM"
  
}

resource "akamai_edge_hostname" "my_edge_hostname_v2" {
  product_id    = "prd_SPM"
  contract_id   = "1-3CV382"
  group_id      = "18405"
  edge_hostname = "mabdulba.terraform-testv3.edgesuite.net"
  ip_behavior   = "IPV4"
}

resource "akamai_property" "my_property" {
  name        = "mabdulba-MyPropertyv3"
  product_id  = "prd_SPM"
  contract_id = "1-3CV382"
  group_id    = "18405"
  
}

