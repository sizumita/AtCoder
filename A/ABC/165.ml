let k = read_int ()
let a,b = Scanf.sscanf (read_line()) "%d %d" (fun a b ->a,b
)
let _ = (if (b / k) * k >= a then "OK" else "NG") |> print_endline