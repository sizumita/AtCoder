let _ = Scanf.sscanf (read_line ()) "%d %d %d" (fun a b c ->
  let d = c - a - b in if d > 0 && 4 * a * b < d * d then "Yes" else "No"
) |> print_endline
