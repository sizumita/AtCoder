let _ = Scanf.sscanf (read_line ()) "%d %d" (fun a b ->
  if b mod a != 0 then b / a + 1 else b / a
) |> Printf.printf "%d\n"