let _ = Scanf.sscanf (read_line ()) "%d %d %d" (fun a b x ->
  if x < a || x > (a+b) then "NO" else "YES"
) |> print_endline