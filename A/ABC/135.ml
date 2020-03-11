let _ = Scanf.sscanf (read_line ()) "%d %d" (fun a b ->
  match a + b with
  | x when x mod 2 = 1 -> print_endline "IMPOSSIBLE"
  | x -> print_endline (string_of_int (x / 2))
)