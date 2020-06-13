let n = read_int ()
let ary = Array.init n (fun a -> 0)
let _ = read_line () |> String.split_on_char ' ' |> List.map (fun b -> ary.((int_of_string b)-1) <- ary.((int_of_string b)-1) + 1)
let rec loop lst =
  match lst with
  | [] -> ()
  | first :: rest -> Printf.printf "%d\n" first; loop rest

let _ = loop @@ Array.to_list ary 