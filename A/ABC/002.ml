let _ = Scanf.sscanf (read_line()) "%d %d" (fun x y ->
  if x > y then x else y
) |> Printf.printf "%d\n"