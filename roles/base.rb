name "base"
description "Base Server Role"
run_list(
	"recipe[apt]",
	"recipe[chef-client::delete_validation]",
	"recipe[aliases]",
	"recipe[chef-client]",
	"recipe[ntp]",
	"recipe[motd-tail]",
	"recipe[sudo]",
	"recipe[users::sysadmins]"
)

default_attributes(
	"authorization" => {
		"sudo" => {
			"users" => ["ubuntu"],
			"passwordless" => true
		}
	}
)