function(obj_gethierarchy this result)
		set(current ${this})
		set(types)
		while(current)
			obj_gettype(${current} type)
			if(type)
				list(APPEND types ${type})
			endif()
			obj_getprototype(${current} proto)
			set(current ${proto})
		endwhile()

		set(${result} ${types} PARENT_SCOPE)
	endfunction()