data "akamai_group" "my_group_id" {
    group_name  = "test"
    contract_id = "1-3CV382"
}

output "my_groups" {
  value = data.akamai_groups.my_group_id.id
}