
function(should_get_and_set_lists)
 obj_create(res)
 obj_set(${res} "val1" a b c d e f g)
 obj_get( ${res} val "val1")
 list(LENGTH val val_len)
 assert(${val_len} EQUAL 7)
endfunction()