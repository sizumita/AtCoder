let _ = Scanf.sscanf (read_line()) "%d %d" (fun a b->
  match a with
  | a when a * 500 >= b -> print_endline "Yes"
  | _ -> print_endline "No"
)