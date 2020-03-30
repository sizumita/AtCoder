(* bitの数字の2真数の時の右からn番目の数字が0か1か *)
let is_bit_one bit n = if bit land (1 lsl n) = 0 then false else true

let int_to_list bit n =
  let rec get i =
    match i with 
    | i when i = n -> []
    | _ -> if is_bit_one bit i then i :: get (i+1) else get (i+1)
  in get 0

(* 文字列をcharのlistにする *)
let explode s = List.init (String.length s) (String.get s)

let abcd = read_line () |> explode |> List.map Char.escaped |> List.map int_of_string

let rec eval nums ops result =
  match nums with
  | [] -> result
  | first :: rest -> if List.length ops = 3 && result = min_int then eval rest ops first
    else 
    match ops with
    | [] -> result
    | f :: r -> if f = "+" then eval rest r (result+first) else eval rest r (result-first)

let rec get_eval_text nums ops =
  match nums with
  | [] -> ""
  | first :: rest -> 
    match ops with
    | [] -> string_of_int first
    | f :: r -> if f = "+" then string_of_int first ^ "+" ^ get_eval_text rest r else string_of_int first ^ "-" ^ get_eval_text rest r

let get_ops bit n =
  let rec get i =
    match i with 
    | i when i = n -> []
    | _ -> if is_bit_one bit i then "+" :: get (i+1) else "-" :: get (i+1)
  in get 0

let rec ans bit =
  match bit with
  | bit when bit >= 3 * 3 -> ""
  | _ -> if eval abcd (get_ops bit 3) min_int = 7 then get_eval_text abcd (get_ops bit 3) else ans (bit+1)

let _ = print_endline @@ (ans 0) ^ "=7"