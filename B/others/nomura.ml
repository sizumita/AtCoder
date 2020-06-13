let t = Scanf.sscanf (read_line()) "%s" (fun t -> t)
(* 文字列をcharのlistにする *)
let explode s = List.init (String.length s) (String.get s)
let rec loop result lst =
  match lst with
  | [] -> result |> List.rev
  | first :: [] -> if first = '?' then loop ('D' :: result) [] else loop (first :: result) []
  | first :: rest ->
    if first = '?' then loop ('D' :: result) (rest) else
    loop (first :: result) (rest)
let r = loop [] @@ explode t |> Array.of_list
(* charのlistをstringに *)
let _ = print_endline @@ String.init (Array.length r) @@ fun a -> r.(a)
