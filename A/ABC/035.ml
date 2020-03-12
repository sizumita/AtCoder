let _ = Scanf.sscanf (read_line ()) "%d %d" (fun w h ->
  match w, h with
  | w, h when w mod 16 = 0 && h mod 9 = 0 -> "16:9"
  | _ -> "4:3"
) |> print_endline