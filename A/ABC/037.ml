let _ = Scanf.sscanf (read_line ()) "%d %d %d" (fun a b c -> 
  if a < b then c / a else c / b
) |> Printf.printf "%d\n"