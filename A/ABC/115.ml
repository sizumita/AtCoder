let d = read_int ()
let ans =
  match d with
  | 25 -> "Christmas"
  | 24 -> "Christmas Eve"
  | 23 -> "Christmas Eve Eve"
  | _ -> "Christmas Eve Eve Eve"
let _ = print_endline ans