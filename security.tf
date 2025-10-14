
resource "akamai_appsec_configuration" "my_security_configuration" {
 name        = "mabdulba_AAP-TF-v2"
 description = "This is my new configuration."
 contract_id = "1-3CV382"
 group_id    = "18405"
 host_names  = ["mabdulba.akamaized.net"]
}


resource "akamai_appsec_security_policy" "my-security-policy" {
  config_id              = akamai_appsec_configuration.my_security_configuration.config_id
  security_policy_name   = "mabdulba_my-policy-tf-v2"
  security_policy_prefix = "1234"
}

resource "akamai_appsec_security_policy" "my-security-policy-1" {
  config_id              = akamai_appsec_configuration.my_security_configuration.config_id
  security_policy_name   = "mabdulba_my-policy-tf-v3"
  security_policy_prefix = "1235"
}


