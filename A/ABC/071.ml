let _ = Scanf.sscanf (read_line()) "%d %d %d" (fun x a b ->
  if abs (x-a) > abs (x-b) then "B" else "A"
) |> print_endline