let _ = Scanf.sscanf (read_line ()) "%d %d %d" (fun a b c ->
  2 * (a * b + b * c + a * c)
) |> Printf.printf "%d\n"