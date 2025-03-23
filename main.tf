terraform {
  required_providers {
    fortios = {
      source  = "fortinetdev/fortios"
    }
  }
}

provider "fortios" {
  hostname     = "220.233.67.203:10443"
  token        = "bGk7hxmnkqhqygz3hnqpqtzdpwGkGp"
  insecure     = "true"
}


resource "fortios_system_dns" "trname" {
  cache_notfound_responses = "disable"
  dns_cache_limit          = 5000
  dns_cache_ttl            = 1800
  ip6_primary              = "::"
  ip6_secondary            = "::"
  primary                  = "208.91.112.53"
  retry                    = 2
  secondary                = "208.91.112.51"
  source_ip                = "0.0.0.0"
  timeout                  = 5
}