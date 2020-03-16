let string_count string target =
  let rec count lst =
    match lst with
    | [] -> 0
    | first :: rest -> if first = target then 1 + count rest else count rest
  in let explode s = List.init (String.length s) (String.get s)
  in count @@ explode string

let _ = Printf.printf "%d\n" (700 + 100 * (string_count (read_line ()) 'o'))