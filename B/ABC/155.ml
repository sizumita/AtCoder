let n = read_int ()

let a_list =
    read_line ()
    |> String.split_on_char ' '
    |> List.map int_of_string

let rec even lst =
    match lst with
    | first :: rest -> if first mod 2 = 0 then first :: even(rest) else even (rest)
    | _ -> [];;


let rec is_mod_3_5 num =
    match num with 
    | num when num mod 5 = 0 -> true
    | num when num mod 3 = 0 -> true
    | _ -> false


let rec ans lst = 
    match lst with 
     [] -> "APPROVED"
    | first :: rest -> if is_mod_3_5(first) then ans(rest) else "DENIED"


let () = even a_list
    |> ans
    |> print_endline
