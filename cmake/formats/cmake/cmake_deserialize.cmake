

  function(cmake_deserialize serialized)
     file_make_temporary("")
  ans(tmp)

    eval("
        function(cmake_deserialize serialized)
            file(WRITE \"${tmp}\" \"\${serialized}\")
            cmake_deserialize_file(\"${tmp}\")
            set(__ans \${__ans} PARENT_SCOPE)
        endfunction()
    ")
    cmake_deserialize("${serialized}")
    return_ans()
  endfunction()
