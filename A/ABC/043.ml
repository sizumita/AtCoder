let n = read_int ()
let rec ans s = 
  match s with
  | s when s = n -> s
  | _ -> s + ans (s+1)
let _ = Printf.printf "%d\n" (ans 1)