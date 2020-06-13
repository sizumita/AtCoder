let n = read_int ()
let a = read_line () |> String.split_on_char ' ' |> List.sort compare

let _ =
  let rec loop lst =
    match lst with
    | [] -> "YES"
    | first :: second :: rest -> if first = second then "NO" else loop (second :: rest)
    | first :: rest -> loop rest
  in loop a |> print_endline