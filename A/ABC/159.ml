let _ = Scanf.sscanf (read_line()) "%d %d" (fun n m ->
  (n * (n-1) + m * (m-1)) / 2
) |> Printf.printf "%d\n"