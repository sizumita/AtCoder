(* 文字列を逆にする *)
let reverse s = let len = String.length s in
  String.init len (fun i -> s.[len - 1 - i])

(* 文字列をcharのlistにする *)
let explode s = List.init (String.length s) (String.get s)

let set_char string s char = 
  let b = Bytes.of_string string in Bytes.set b s char; Bytes.to_string b

(* charのlistをstringに *)
let string_of_chars chars = 
  let buf = Buffer.create 16 in
  List.iter (Buffer.add_char buf) chars;
  Buffer.contents buf

let string_count string target =
  let rec count lst =
    match lst with
    | [] -> 0
    | first :: rest -> if first = target then 1 + count rest else count rest
  in let explode s = List.init (String.length s) (String.get s)
  in count @@ explode string