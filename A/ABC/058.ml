let _ = Scanf.sscanf (read_line()) "%d %d %d" (fun a b c ->
  if (b - a) = (c - b) then "YES" else "NO"
) |> print_endline