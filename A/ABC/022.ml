type nst_ = {n : int; s : int; t : int}
let nst = Scanf.sscanf (read_line()) "%d %d %d" (fun n s t ->
  {n=n; s=s; t=t}
)
let rec ans x s =
  let a = read_int () + x in
  match s with
  | s when s = nst.n -> if nst.s <= a && a <= nst.t then 1 else 0
  | _ -> if nst.s <= a && a <= nst.t then 1 + ans a (s+1) else ans a (s+1)

let _ = Printf.printf "%d\n" (ans 0 1)