let explode s = List.init (String.length s) (String.get s)
let string_of_chars chars = 
  let buf = Buffer.create 16 in
  List.iter (Buffer.add_char buf) chars;
  Buffer.contents buf
let n = read_line () |> explode
let rec ans lst = 
  match lst with
  | [] -> []
  | first :: rest -> if first = '9' then '1' :: ans rest else '9' :: ans rest

let _ = print_endline (string_of_chars (ans n))