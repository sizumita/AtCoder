let _ = Scanf.sscanf (read_line()) "%d %d %d" (fun a b c ->
  List.nth (List.sort compare [a;b;c]) 1
) |> Printf.printf "%d\n"