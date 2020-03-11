let _ = Scanf.sscanf (read_line ()) "%d %d" (fun a b ->
  match a with
  | a when a >= 13 -> print_endline (string_of_int b)
  | a when a >= 6 -> print_endline (string_of_int (b/2))
  | a -> print_endline "0"
)