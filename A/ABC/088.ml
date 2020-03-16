let n = read_int ()
let a = read_int ()
let _ = (if n mod 500 > a then "No" else "Yes") |> print_endline