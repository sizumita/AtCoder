let _ = Scanf.sscanf (read_line()) "%d %d" (fun s t ->
  t - s + 1
) |> Printf.printf "%d\n"