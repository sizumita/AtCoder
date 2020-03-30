let _ = Scanf.sscanf (read_line()) "%s %s" (fun c1 c2 ->
  if String.uppercase_ascii c2 = c1 then "Yes" else "No"
) |> print_endline