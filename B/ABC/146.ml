(* 文字列をcharのlistにする *)
let explode s = List.init (String.length s) (String.get s)
(* charのlistをstringに *)
let string_of_chars chars = 
  let buf = Buffer.create 16 in
  List.iter (Buffer.add_char buf) chars;
  Buffer.contents buf

let n = read_int ()
let s = read_line () |> explode
let z = int_of_char 'Z'

let rec get_added chr i =
  if int_of_char chr + i > int_of_char 'Z' then get_added 'A' (i - (z - int_of_char chr)-1)
  else char_of_int (int_of_char chr + i)

let rec loop lst =
  match lst with
  | [] -> []
  | first :: rest -> get_added first n :: loop rest

let _ = print_endline @@ string_of_chars @@ loop s
