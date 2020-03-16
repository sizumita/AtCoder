let _ = Scanf.sscanf (read_line()) "%d %d" (fun a b ->
  if a + b >= 24 then a + b - 24 else a + b
) |> Printf.printf "%d\n"