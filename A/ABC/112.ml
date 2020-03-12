let age = read_int ()
let _ = if age = 1 then print_endline "Hello World"
        else let a = read_int () in let b = read_int () in print_endline (string_of_int (a + b))
