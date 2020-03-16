let _ = Scanf.sscanf (read_line ()) "%d %d %d" (fun a b c ->
  if a = b then c else if a = c then b else a
) |> Printf.printf "%d\n"