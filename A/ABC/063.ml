let _ = Scanf.sscanf (read_line ()) "%d %d" (fun a b ->
  match a with
  | a when a + b >= 10 -> print_endline "error"
  | _ -> Printf.printf "%d\n" (a + b)
)