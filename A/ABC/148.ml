let a = read_int ()
let b = read_int ()


(* 
1 + 2 = 3
1 + 3 = 4
2 + 3 = 5
 *)
let _ = match a + b with
  | 3 -> print_endline "3"
  | 4 -> print_endline "2"
  | _ -> print_endline "1"