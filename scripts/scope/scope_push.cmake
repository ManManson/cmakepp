


macro(scope_push)
	map_create(scope)
	push_front(scopes ${scope})
	get_cmake_property(vars VARIABLES)
	foreach(var ${vars})
		map_set(${scope} ${var} "${${var}}")
	endforeach()
	#clear used variables
	set(var)
	set(scope)
	set(vars)
endmacro()