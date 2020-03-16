let _ = Scanf.sscanf (read_line()) "%d %d" (fun a b ->
  if a = b then "Draw" else
  if a = 1 then "Alice" else
  if b = 1 then "Bob" else
  if a > b then "Alice" else
  "Bob"
) |> print_endline