let n = read_int ()
let rec g n s =
  match s with
  | s when n / 2 = s -> []
  | _ -> if n mod s = 0 then (s-1) + (n / s - 1) :: g n (s+1) else g n (s+1)

let rec min lst t =
  match lst with
   [] -> t
  | first :: rest -> if first < t then min rest first else min rest t

let _ = print_endline (string_of_int (min (g n 1) max_int))