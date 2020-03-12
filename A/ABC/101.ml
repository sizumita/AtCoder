let explode s = List.init (String.length s) (String.get s)
let _ = 
  let s = read_line () 
  in let rec r lst =
    match lst with
    | [] -> 0
    | first :: rest -> if first = '-' then -1 + r rest else 1 + r rest
  in Printf.printf "%d\n" (r @@ explode s)
