let _ = Scanf.sscanf (read_line()) "%d %d %d" (fun n a b ->
  min (n * a) b
) |> Printf.printf "%d\n"