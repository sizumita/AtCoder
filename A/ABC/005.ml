let _ = Scanf.sscanf (read_line()) "%d %d" (fun x y ->
  y / x
) |> Printf.printf "%d\n"