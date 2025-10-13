
resource "akamai_appsec_configuration" "my_security_configuration" {
 name        = "Shahid_AAP-TF"
 description = "This is my new configuration."
 contract_id = "1-3CV382"
 group_id    = "18405"
 host_names  = ["mabdulba.akamaized.net"]
}


resource "akamai_appsec_security_policy" "my-security-policy" {
  config_id              = akamai_appsec_configuration.my_security_configuration.config_id
  security_policy_name   = "shahid_my-policy-tf"
  security_policy_prefix = "abc1"
}

resource "akamai_appsec_security_policy" "my-security-policy-1" {
  config_id              = akamai_appsec_configuration.my_security_configuration.config_id
  security_policy_name   = "shahid_my-policy-tf-1"
  security_policy_prefix = "abc2"
}


