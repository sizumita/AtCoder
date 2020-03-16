let _ = Scanf.sscanf (read_line()) "%c %c" (fun x y ->
  match int_of_char x, int_of_char y with
  | x, y when x > y -> ">"
  | x, y when x < y -> "<"
  | _ -> "="
) |> print_endline