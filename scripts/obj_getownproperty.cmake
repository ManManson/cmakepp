function(obj_getownproperty this result key)
	obj_getownref(${this} prop_ref ${key})
	obj_getrefvalue(${prop_ref} res)
	return_value(${res})
endfunction()