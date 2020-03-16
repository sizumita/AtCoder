let _ = Scanf.sscanf (read_line()) "%d %d %d %d" (fun a b c d ->
  if a * b > c * d then a * b else c * d
) |> Printf.printf "%d\n"