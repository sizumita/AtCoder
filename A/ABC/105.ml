let _ = Scanf.sscanf (read_line ()) "%d %d" (fun n k ->
  if n mod k = 0 then 0 else 1
) |> Printf.printf "%d\n"