let _ = Scanf.sscanf (read_line()) "%d %d" (fun m d ->
  if m mod d = 0 then "YES" else "NO"
) |> print_endline