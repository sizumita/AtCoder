let n = read_int()
let rec loop i sum = 
  if i > n then sum else
  if i mod 5 = 0 || i mod 3 = 0 then loop (i+1) sum else
  loop (i+1) (sum+i)

let _ = Printf.printf "%d\n" @@ loop 1 0
