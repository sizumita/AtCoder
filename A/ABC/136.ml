let _ = Scanf.sscanf (read_line()) "%d %d %d" (fun a b c ->
  match c - (a - b) with
  | x when x <= 0 -> print_endline "0"
  | x -> print_endline (string_of_int x)
)