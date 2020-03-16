let _ = Scanf.sscanf (read_line()) "%d %d %d" (fun x a b ->
  if b <= a then "delicious" else
  if x + a < b then "dangerous" else "safe"
) |> print_endline