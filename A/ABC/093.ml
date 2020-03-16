let s = read_line ()
let _ = 
  (match s with
  | "abc" -> "Yes"
  | "acb" -> "Yes"
  | "bac" -> "Yes"
  | "bca" -> "Yes"
  | "cab" -> "Yes"
  | "cba" -> "Yes"
  | _ -> "No") |> print_endline