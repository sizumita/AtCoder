(* charのlistをstringに *)
let string_of_chars chars = 
  let buf = Buffer.create 16 in
  List.iter (Buffer.add_char buf) chars;
  Buffer.contents buf

(* 文字列をcharのlistにする *)
let explode s = List.init (String.length s) (String.get s)
let n = read_int ()
let s, t = Scanf.sscanf (read_line()) "%s %s" (fun s t ->
  s, t
)
let l = List.concat @@ List.map (fun a -> let (b, c) = a in b :: c :: []) @@ List.combine (explode s) (explode t)
let _ = print_endline @@ string_of_chars l