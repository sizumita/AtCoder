let _ = Scanf.sscanf (read_line ()) "%d %d" (fun a d ->
  max ((a+1) * d)  (a * (d+1))
) |> Printf.printf "%d\n"