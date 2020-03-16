let a = read_line ()
let b = read_line ()
let _ = (if String.length a > String.length b then a else b) |> print_endline