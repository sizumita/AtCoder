let string_count string target =
  let rec count lst =
    match lst with
    | [] -> 0
    | first :: rest -> if first = target then 1 + count rest else count rest
  in let explode s = List.init (String.length s) (String.get s)
  in count @@ explode string

let n = read_line ()
let _ = (if string_count n (n.[0]) = 4 then "SAME" else "DIFFERENT") |> print_endline