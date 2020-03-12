let _ = Scanf.sscanf (read_line ()) "%f %f %f %f" (fun a b c d ->
  match b/.a, d/.c with
  | x, y when x > y -> "TAKAHASHI"
  | x, y when x = y -> "DRAW"
  | _ -> "AOKI"
) |> Printf.printf "%s\n"