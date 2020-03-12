let a = read_int ()
let b = read_int ()
let n = read_int ()
let rec ans s =
  match s with
  | s when s mod a = 0 && s mod b = 0 && s >= n -> s
  | _ -> ans (s+1)

let _ = Printf.printf "%d\n" (ans n)
