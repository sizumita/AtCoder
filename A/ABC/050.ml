let _ = Scanf.sscanf (read_line()) "%d %s %d" (fun a op b ->
  if op = "+" then a + b else a - b
) |> Printf.printf "%d\n"