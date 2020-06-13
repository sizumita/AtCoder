(* 文字列をcharのlistにする *)
let explode s = List.init (String.length s) (String.get s)
let n = read_int ()
let dict = Array.init (n+1) @@ fun a -> 0
let rec get_basyo lst s i =
  match lst with
  | [] -> -1
  | first :: rest -> if first = s then i else get_basyo rest s (i+1)
let rec loop lst i =
  if i >= n then () else
  let s = read_line () |> explode |> List.sort compare in
  if List.mem s lst then (dict.(get_basyo lst s 0) <- dict.(get_basyo lst s 0) + 1; loop lst (i+1)) else
  (dict.(List.length lst) <- 1; loop (List.append lst [s]) (i+1))
let rec answ i ans =
  if dict.(i) = 0 then ans else
  answ (i+1) (ans + (dict.(i) * (dict.(i)-1)))

let _ = loop [] 0; Printf.printf "%d\n" @@ (answ 0 0) / 2