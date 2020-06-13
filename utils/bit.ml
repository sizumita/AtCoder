(* bitの数字の2真数の時の右からn番目の数字が0か1か *)
let is_bit_one bit n = if bit land (1 lsl n) = 0 then false else true

(* 基数変換 *)
let radix_conversion target radix =
  let digits = "0123456789abcdefghijklmnopqrstuvwxyz"
  in let rec _radix_conversion n result =
       if n == 0 then result
       else n mod radix :: _radix_conversion (n / radix) result
     in let char_list = List.map (fun e -> digits.[e]) (_radix_conversion target [])
  in List.fold_right (fun a b -> b ^ Char.escaped a) char_list ""

let get_bin_length n = String.length @@ radix_conversion n 2

(* nを2進数にしたときにいくつ1があるか数える *)
let count1 n =
  let l = get_bin_length n in
  let rec count s =
    match s with
    | s when s = l -> 0
    | _ -> if is_bit_one n s then 1 + count (s+1) else count (s+1)
  in count 0

let int_to_list bit n =
  let rec get i =
    match i with 
    | i when i = n -> []
    | _ -> if is_bit_one bit i then i :: get (i+1) else get (i+1)
  in get 0

let bit_list bit n =
  let rec get i =
    match i with 
    | i when i = n -> []
    | _ -> if is_bit_one bit i then 1 :: get (i+1) else 0 :: get (i+1)
  in get 0