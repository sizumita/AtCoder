let explode s = List.init (String.length s) (String.get s)
let s = explode (read_line ())
let k = read_int ()
let rec ans lst n = 
  match lst with
   [] -> print_endline "1"
  | first :: rest when first = '1' && n = (k-1) -> print_endline "1" 
  | first :: rest -> if first = '1' then ans rest (n+1) else print_char first

let _ = ans s 0
