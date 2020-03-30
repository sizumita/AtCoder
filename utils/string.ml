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

let count_char chr target =
  let rec count lst =
    match lst with
    | [] -> 0
    | first :: rest -> if first = target then 1 + count rest else count rest
  in let explode s = List.init (String.length s) (String.get s)
  in count @@ explode chr

let rec count_string str target =
  let rec slicing str target =
    match str with
    | t when String.length t = String.length target -> 0
    | t -> if get (String.length str) target = str then 1 + slicing str (cut 1 target) else slicing str (cut 1 target)
  in slicing
and get num str = String.init num (fun a -> String.get str a)
and cut st str = String.init (String.length str - st) (fun a -> String.get str (a+st))

(* 前からst文字を消す *)
let cut st str = String.init (String.length str - st) (fun a -> String.get str (a+st))

(* 後ろからed文字を消す *)
let back_cut ed str = String.init (String.length str - ed) (String.get str)
