let _ = Scanf.sscanf (read_line()) "%d %d" (fun a b ->
  if (a + b) mod 2 = 1 then (a + b) / 2 + 1 else (a + b) / 2
) |> Printf.printf "%d\n"