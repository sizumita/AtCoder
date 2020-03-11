let s = read_line ()
let rec ans k =
  match k with
   [] -> ""
  | first :: rest -> first ^ " " ^ ans rest

let _ = print_endline (ans (String.split_on_char ',' s))