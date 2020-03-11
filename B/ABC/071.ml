let explode s = List.init (String.length s) (String.get s)
let s = (explode (read_line ()))

let all = explode "qwertyuiopasdfghjklzxcvbnm"
let rec ans lst =
  match lst with
   [] -> []
  | first :: rest -> if List.exists (fun p -> p = first) s then ans rest else first :: ans rest

let a = List.sort compare (ans all)
let _ = 
  match a with
  | [] -> print_endline "None"
  | first :: rest -> print_char first; print_string "\n"
