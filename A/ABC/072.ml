let _ = Scanf.sscanf (read_line()) "%d %d" (fun x t ->
  if x < t then 0 else x - t
) |> Printf.printf "%d\n"