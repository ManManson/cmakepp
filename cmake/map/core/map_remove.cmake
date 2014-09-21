
function(map_remove map key)
  map_has("${map}" "${key}")
  map_set("${map}" "${key}")
  ans(has_key)
  if(NOT has_key)
    return(false)
  endif()
  get_property(keys GLOBAL PROPERTY "${map}")
  list(REMOVE_ITEM keys "${key}")
  set_property(GLOBAL PROPERTY "${map}" "${keys}")
  return(true)
endfunction()