data "akamai_group" "my_group_id" {
    group_name  = "Akamai Test"
    contract_id = "1-3CV382"
}

output "my_group_id" {
  value = data.akamai_group.my_group_id.id
}


data "akamai_appsec_security_policy" "my-security-policy" {
    config_id            = 20308
    security_policy_name = "aaa"
}

output "my-security-policy" {
  value = data.akamai_appsec_security_policy.my-security-policy.id
  
}

data "akamai_property" "my_property" {
  name = "testamd"
  version     = 12
}

output "my_property" {
  #value = data.akamai_property.my_property.property_id
  value = data.akamai_property.my_property.group_id
}

