let h = read_int ()
let w = read_int ()
let n = read_int ()
let big = if h > w then h else w
let rec ans k =
  match k with
  | k when k * big >= n -> k
  | _ -> ans (k+1)

let _ = Printf.printf "%d\n" (ans 1)