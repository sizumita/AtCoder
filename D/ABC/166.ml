let x = read_int ()

let rec loop a =
  let rec loop2 b =
    if b >= 1000 then (0, 0) else
    if ((a * a * a * a * a) - (b*b*b*b*b)) = x then (a, b) else loop2 (b+1)
  in if a >= 1000 then (0, 0) else (
  let a_, b_ = loop2 (-1000) in
  if a_ = 0 && b_ = 0 then loop (a+1) else (a_, b_)
)
let a, b = loop (-1000)
let _ = Printf.printf "%d %d\n" a b

