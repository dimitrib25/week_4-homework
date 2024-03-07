#CHALLENGE 1
variable "web_server_names"{
description = "list of servers"
type = list(string)
default = ["webserver1", "webserver2", "webserver3"]
}

#CHALLENGE 2
variable "feature_toggles"{
    type = map(string)
    default = {
        "ui" = "enabled"
    "beta_access" = "disabled"
    }
}

#CHALLENGE 4
variable "server_config" {
    description = "Configuration settings for server."
    type = object({
      hostname = string
      ip_address = string
      roles = string
    })
    default = {
        hostname = "mystic"
        ip_address = "192.168.1.1"
        roles = "web_server"
    }
}
