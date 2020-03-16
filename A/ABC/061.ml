let _ = Scanf.sscanf (read_line()) "%d %d %d" (fun a b c ->
  if a <= c && c <= b then "Yes" else "No"
) |> print_endline