let a = int_of_char 'A'
let _ = Printf.printf "%d\n" ((int_of_char @@ (read_line ()).[0]) - a + 1)