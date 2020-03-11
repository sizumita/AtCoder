let n = read_int ()
let _ =
  match n with
  | n when n mod 2 = 1 -> print_endline (string_of_int (n/2))
  | _ -> print_endline (string_of_int (n/2-1))
