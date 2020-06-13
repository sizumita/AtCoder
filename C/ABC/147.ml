let rec print_list lst=
  match lst with
  | [] -> Printf.printf "\n"
  | first :: rest -> Printf.printf "%b " first ; print_list rest

let count_list lst target =
  let rec loop l =
    match l with
    | [] -> 0
    | first :: rest -> if first = target then 1 + loop rest else loop rest
  in loop lst



(* bitの数字の2真数の時の右からn番目の数字が0か1か *)
let is_bit_one bit n = if bit land (1 lsl n) = 0 then false else true


let bit_list bit n =
  let rec get i =
    match i with 
    | i when i = n -> []
    | _ -> if is_bit_one bit i then true :: get (i+1) else false :: get (i+1)
  in get 0


type syogen = { user : int; is_honest : bool }
let rec get_syogen i a = 
  if i >= a then [] else
    Scanf.sscanf (read_line()) "%d %d" (fun x y -> { user=x-1; is_honest=if y = i then true else false }) :: get_syogen (i+1) a

let n = read_int ()
let data = Array.init n (fun a -> get_syogen 0 @@ read_int ())

let rec check_true ary syogen_list =
  match syogen_list with
  | [] -> true
  | first :: rest ->
    if ary.(first.user) = first.is_honest then check_true ary rest else false

let rec check_false ary syogen_list =
  match syogen_list with
  | [] -> true
  | first :: rest ->
    if ary.(first.user) != first.is_honest then check_false ary rest else false

let check_syogen ary i syogen_list =
  if i = 1 then check_true ary syogen_list else true

let rec is_true ary i =
  if i >= n then true else if check_syogen ary i data.(i) then is_true ary (i+1) else false

let check bit =
  let b_list = bit_list bit n in 
  if is_true (Array.of_list @@ b_list) 0 then (count_list b_list true) else 0

let rec bit_loop bit =
  if bit > n * n then min_int else max (check bit) (bit_loop @@ bit+1)

let _ = Printf.printf "%d\n" @@ bit_loop 0
(* 3
   1
   2 1
   1
   1 1
   1
   2 0 *)

