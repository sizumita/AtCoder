(* bitの数字の2真数の時の右からn番目の数字が0か1か *)
let is_bit_one bit n = if bit land (1 lsl n) = 0 then false else true

(* 文字列をcharのlistにする *)
let explode s = List.init (String.length s) (String.get s)

(* charのlistをstringに *)
let string_of_chars chars = 
  let buf = Buffer.create 16 in
  List.iter (Buffer.add_char buf) chars;
  Buffer.contents buf

let n = read_line()
let l = (String.length n) - 1
let _ = Printf.printf "%d\n" l
let n2 = explode n

let get_string bit n =
  let rec get i l =
    match i with 
    | i when i = n -> l
    | _ -> match l with
      | [] -> []
      | first :: rest -> if is_bit_one bit i then first :: '+' :: get (i+1) rest else first :: get (i+1) rest
  in string_of_chars @@ get 0 n2

let rec sum_string_list lst =
  match lst with
  | [] -> 0
  | first :: rest -> int_of_string first + sum_string_list rest

let rec ans bit =
  match bit with
  | bit when bit < l * l -> print_endline @@ get_string bit l;(get_string bit l |> String.split_on_char '+' |> sum_string_list) + ans (bit+1)
  | _ -> 0

let _ = Printf.printf "%d\n" @@ ans 0
