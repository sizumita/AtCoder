let _ = Scanf.sscanf (read_line()) "%d %d %d" (fun a b c ->
  if a + b = c || a + c = b || b + c = a then "Yes" else "No"
) |> print_endline