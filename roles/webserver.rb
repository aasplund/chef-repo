name "webserver"
description "Web Server"
run_list(
  "role[base]",
  "recipe[nginx]",
  "recipe[nginx_conf]"
)

default_attributes(
  "nginx_conf" => {
    "confs" => [{
      "default" => {
        "socket" => "localhost:8080"
      }
    }],
  	"pre_socket" => "http://"
  }
)
