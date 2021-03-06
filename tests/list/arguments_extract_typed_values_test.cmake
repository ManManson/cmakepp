function(test)

  function(test_fu)
    arguments_extract_typed_values(0 ${ARGC} 
      <test:<any>...> 
      <test2:<any>>
      [--config:<map>]
      [--myvalue] 
      [--myvalue2] 
      [--myvalue3:<int>?]
      [--myvalue4:<int>?]
      [--int5:<int>?]
      [--callback:<callable>]
      [--int6:<int>=4]
      [--int7:<int>=4]
    )
    ans(rest)
  #  print_vars(__extracted_names ${__extracted_names} rest)
    foreach(name ${__extracted_names} rest)
      set(${name} ${${name}} PARENT_SCOPE)
    endforeach()
  endfunction()


set(myvalue true)

  timer_start(arguments_extract_values)
  test_fu(--int7 9 --myvalue4 3  --int5 0 --config "{asd:'bsd'}" "" --myvalue2 "nana;baba"  kakaka --callback "[](gaga)return('{{gaga}}{{gaga}}')" jfjfjf)
  timer_print_elapsed(arguments_extract_values)

  assert(NOT myvalue)
  assert(myvalue2)
  assertf({config.asd} STREQUAL "bsd")
 
  assert(${rest} EQUALS kakaka jfjfjf)
  assert(callback)
  
  assert(NOT myvalue3)
  assert(${myvalue4} STREQUAL 3)
  assert(${int5} STREQUAL "0")
  assert(${int6} STREQUAL "4")
  assert(${int7} STREQUAL "9")

  endfunction()