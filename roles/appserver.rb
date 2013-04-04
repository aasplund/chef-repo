name "appserver"
description "Application Server"
run_list(
	"role[base]",
	"recipe[tomcat]"
)