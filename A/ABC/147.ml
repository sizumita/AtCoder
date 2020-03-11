let _ = Scanf.sscanf (read_line ()) "%d %d %d" (fun a b c ->
  match a + b + c with
  | x when x >= 22 -> print_endline "bust"
  | _ -> print_endline "win"
)