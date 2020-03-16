let _ = Scanf.sscanf (read_line()) "%d %d" (fun n m ->
  (n-1) * (m-1)
) |> Printf.printf "%d\n"