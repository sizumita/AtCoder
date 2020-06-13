let k, x = Scanf.sscanf (read_line()) "%d %d" (fun k x ->k,x)
let rec show i e =
  if i > e then () else
  (Printf.printf "%d " i; show (i+1) e)

let _ = show (x-k+1) (x+k-1); Printf.printf "\n"