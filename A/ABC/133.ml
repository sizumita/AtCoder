let _ = Scanf.sscanf (read_line ()) "%d %d %d" (fun n a b -> 
  match n * a with
  | x when x < b -> print_endline (string_of_int (x))
  | _ -> print_endline (string_of_int b)
)