let _ = Scanf.sscanf (read_line()) "%d %d %d" (fun a b c ->
  min (a+b) @@ min (a+c) (b+c)
) |> Printf.printf "%d\n"