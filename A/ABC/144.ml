let _ = Scanf.sscanf (read_line ()) "%d %d" (fun a b ->
  match a with
  | a when a > 9 -> print_endline "-1"
  | _ -> 
    match b with
    | b when b > 9 -> print_endline "-1"
    | _ -> print_endline (string_of_int (a * b))
)