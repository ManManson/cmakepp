function(obj_istype this result typename)
	obj_gethierarchy(${this} hierarchy)
	list(FIND hierarchy ${typename} index)
	if(${index} LESS 0)
		return_value(false)
	endif()
		return_value(true)
	endif()
	
endfunction()