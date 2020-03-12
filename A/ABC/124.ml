let _ = Scanf.sscanf (read_line ()) "%d %d" (fun a b ->
  match a with
  | a when a = b -> print_endline (string_of_int (a * 2))
  | a when a > b -> print_endline (string_of_int (a + (a-1)))
  | _ -> print_endline (string_of_int (b + (b-1)))
)