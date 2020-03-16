let _ = Scanf.sscanf (read_line()) "%d %d %d %d" (fun a b c d ->
  match a+b, c+d with
  | x, y when x > y -> "Left"
  | x, y when x < y -> "Right"
  | _ -> "Balanced"
) |> print_endline