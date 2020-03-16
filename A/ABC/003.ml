let n = read_int ()
let rec ans s = if s = 0 then 0 else s * 10000 + ans (s-1)
let _ = Printf.printf "%d\n" ((ans n) / n)