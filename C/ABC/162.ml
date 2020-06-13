(* a と b の最大公約数を返す関数 *)
let rec gcd a b =
  match b with
  | 0 -> a
  | _ -> gcd b (a mod b)

(* 重複順列 *)
let rec dup_perm n lst =
  if n = 0 then [[]]
  else flatmap (fun x -> List.map (fun y -> x :: y)
                                  (dup_perm (n - 1) lst))
               lst
and flatten = function
  [] -> []
| x::xs -> x @ (flatten xs)
and flatmap func ls = flatten (List.map func ls)


let k = read_int ()
let rec loop i =
  if i > k then [] else i :: loop (i+1)
let k2 = dup_perm 3 @@ loop 1
let rec loop2 lst ans =
  match lst with
  | [] -> ans
  | first :: rest ->
    loop2 rest (ans+(gcd (List.hd first) @@ gcd (List.nth first 1) (List.nth first 2)))

let _ = Printf.printf "%d\n" @@ loop2 k2 0
