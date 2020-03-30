let _ = Scanf.sscanf (read_line ()) "%d %d" (fun h w ->
  if h = 1 || w = 1 then 1 else
  if h * w mod 2 = 1 then h * w / 2 + 1 else h * w / 2
) |> Printf.printf "%d\n" 