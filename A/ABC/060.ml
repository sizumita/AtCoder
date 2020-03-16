let _ = Scanf.sscanf (read_line()) "%s %s %s" (fun a b c ->
  if a.[(String.length a)-1] = b.[0] && b.[(String.length b)-1] = c.[0] then "YES" else "NO"
) |> print_endline