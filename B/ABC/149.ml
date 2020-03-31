let a, b, k = Scanf.sscanf (read_line()) "%d %d %d" (fun a b k ->
  a, b, k
)

let end_a = if a < k then 0 else a - k
let end_b = if end_a != 0 then b else if b < k - a then 0 else b - (k - a)

let _ = Printf.printf "%d %d\n" end_a end_b

