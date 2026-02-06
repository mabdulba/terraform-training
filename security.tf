resource "akamai_appsec_configuration" "my_security_configuration" {
 name        = "mabdulba-AAP-TF-v6_Config"
 description = "This is my new configuration."
 contract_id = "1-3CV382"
 group_id    = "18405"
 host_names  = ["mabdulba.akamaized.net"]
}

resource "akamai_appsec_security_policy" "shahid" {
  config_id              = akamai_appsec_configuration.my_security_configuration.config_id
  security_policy_name   = "mabdulba_my-policy-tf-v5"
  security_policy_prefix = "1231"
}