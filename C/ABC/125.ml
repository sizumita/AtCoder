(* a と b の最大公約数を返す関数 *)
let rec gcd a b =
  match b with
  | 0 -> a
  | _ -> gcd b (a mod b)
(* 素数かどうか *)
let is_prime n =
  let rec judge n' i =
    match i with
    | i when n' < i * i -> true
    | i -> if n' mod i = 0 then false else judge n' (i+1)
  in judge n 2
let n = read_int ()
let a = read_line () |> String.split_on_char ' ' |> List.map int_of_string
let get_gcd l =
  let rec loop lst hd = 
    match lst with
    | [] -> hd
    | first :: rest -> gcd first (loop rest hd)
  in loop (List.tl l) (List.hd l)

let rec loop old lst =
  match lst with
  | [] -> min_int
  | first :: rest ->
    max (get_gcd @@ old @ rest) (loop (first::old) (rest))

let _ = Printf.printf "%d\n" @@ loop [] a



