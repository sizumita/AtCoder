let explode s = List.init (String.length s) (String.get s)

let rec perm n ls =
  if n = 0 then [[]]
  else flatmap (fun x -> List.map (fun y -> x :: y)
                                  (perm (n - 1) ls))
               ls
and flatten = function
  [] -> []
| x::xs -> x @ (flatten xs)
and flatmap func ls = flatten (List.map func ls)
let string_of_chars chars = 
  let buf = Buffer.create 16 in
  List.iter (Buffer.add_char buf) chars;
  Buffer.contents buf

let s = read_line () |> explode
let n = read_int ()

let rec a lst =
  match lst with
  | [] -> []
  | first :: rest -> string_of_chars first :: a rest

let _ = print_endline (List.nth ( a (perm 2 s) ) (n-1))