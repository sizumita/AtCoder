(* max *)

let rec max lst_ = search_max lst_ 0
and search_max lst value = 
    match lst with
     [] -> value
    | first :: rest -> if first > value then search_max rest first else search_max rest value

(* リストの全てのようそ　重複なし *)
let get_all_elements l =
  let rec get existed lst =
    match lst with
     [] -> existed
    | first :: rest -> if List.exists (fun a -> a = first) existed then get existed rest else get (first :: existed) rest
  in get [] l
