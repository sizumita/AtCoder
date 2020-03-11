let explode s = List.init (String.length s) (String.get s)
let s = read_line () |> explode

let get_all_elements l =
  let rec get existed lst =
    match lst with
     [] -> existed
    | first :: rest -> if List.exists (fun a -> a = first) existed then get existed rest 
                       else get (first :: existed) rest
  in get [] l

let ans l =
  let rec p lst =
    match lst with
    | [] -> true
    | first :: rest -> if List.length (List.find_all (fun a -> a = first) s) = 2 then p rest else false
  in p l

let all = get_all_elements s
let _ = if List.length all != 2 then print_endline "No"
        else if ans all then print_endline "Yes" else print_endline "No"
