(* 文字列をcharのlistにする *)
let explode s = List.init (String.length s) (String.get s)
(* charのlistをstringに *)
let string_of_chars chars = 
  let buf = Buffer.create 16 in
  List.iter (Buffer.add_char buf) chars;
  Buffer.contents buf

let t = List.nth (read_line () |> explode) 0
let c = List.nth (read_line () |> explode) 1
let u = List.nth (read_line () |> explode) 2
let _ = print_endline @@ string_of_chars [t;c;u]