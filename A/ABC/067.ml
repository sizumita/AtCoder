let _ = Scanf.sscanf (read_line ()) "%d %d" (fun a b ->
  if a mod 3 = 0 || b mod 3 = 0 || (a+b) mod 3 = 0 then "Possible" else "Impossible"
) |> print_endline