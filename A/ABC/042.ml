let _ = Scanf.sscanf (read_line()) "%d %d %d" (fun a b c ->
  match a, b, c with
  | 5, 7, 5 -> "YES"
  | 5, 5, 7 -> "YES"
  | 7, 5, 5 -> "YES"
  | _ -> "NO"
) |> print_endline