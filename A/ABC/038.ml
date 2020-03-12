let s = read_line ()
let _ = (if s.[(String.length s)-1] = 'T' then "YES" else "NO") |> print_endline