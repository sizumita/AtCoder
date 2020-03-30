(* bitの数字の2真数の時の右からn番目の数字が0か1か *)
let is_bit_one bit n = if bit land (1 lsl n) = 0 then false else true

let int_to_list bit n =
  let rec get i =
    match i with 
    | i when i = n -> []
    | _ -> if is_bit_one bit i then i :: get (i+1) else get (i+1)
  in get 0

let rec sum lst =
  match lst with
  | [] -> 0
  | first :: rest -> first + sum rest


let rec read_lines_to_int_list count =
    match count with
    | 0 -> []
    | _ -> read_int () :: read_lines_to_int_list (count-1)

let n = read_int ()
let a = read_lines_to_int_list n
let a_sum = sum a

let rec sumed o =
      match o with
      | [] -> 0
      | first :: rest -> List.nth a first + sumed rest

let rec x bit m = 
  match bit with
  | bit when bit < n * n -> 
    let s = sumed @@ int_to_list bit n in
    if max s (a_sum - s) < m then x (bit+1) (max s (a_sum - s)) else x (bit+1) (m)
  | _ -> m

let _ = print_endline @@ string_of_int @@ x 0 max_int