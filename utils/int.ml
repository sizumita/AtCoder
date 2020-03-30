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

(* 約数列挙 *)
let divisors n =
  let rec get n' i =
    match i with
    | i when n' < i * i -> []
    | i -> if n' mod i = 0 then i :: (n/i) :: get n' (i+1) else get n' (i+1)
  in List.sort compare (get n 1)

(* 素因数分解 *)
let prime_factorize n =
  let fact n' i =
    match i with
