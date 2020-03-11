let _ = Scanf.sscanf (read_line ()) "%d %d" (fun a b -> 
  match a - (b * 2) with
  | x when x <= 0 -> print_endline "0"
  | x -> print_endline (string_of_int x)
)