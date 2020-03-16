let _ = Scanf.sscanf (read_line()) "%s %s" (fun a b ->
  if a = b then "H" else "D"
) |> print_endline