(* 重複なし順列 *)
let rec perm n ls =
  if n = 0 then [[]]
  else flatmap (fun x -> List.map (fun y -> x :: y)
                                  (perm (n - 1) (remove x ls)))
               ls
and remove x ls = List.filter (fun y -> x <> y) ls
and flatten = function
  [] -> []
| x::xs -> x @ (flatten xs)
and flatmap func ls = flatten (List.map func ls)


let t = Scanf.sscanf (read_line ()) "%d %d %d" (fun a b c -> [a; b; c])
let c = Scanf.sscanf (read_line ()) "%d %d %d" (fun a b c -> [a; b; c])
let b = Scanf.sscanf (read_line ()) "%d %d %d" (fun a b c -> [a; b; c])

let bingo_list = [t; c; b; 
    [List.hd t; List.nth c 1; List.nth b 2];
    [List.nth t 2; List.nth c 1; List.hd b];

    [List.hd t; List.hd c; List.hd b];
    [List.nth t 1; List.nth c 1; List.nth b 1];
    [List.nth t 2; List.nth c 2; List.nth b 2];
    ]

let n = read_int ()

let rec read_lines_to_int_list count =
    match count with
    | 0 -> []
    | _ -> read_int () :: read_lines_to_int_list (count-1)

let value_list = read_lines_to_int_list n
let all_perms = perm 3 value_list

let rec ans lst = match lst with
     [] -> false
    | first :: rest -> if List.exists (fun x -> x = first) all_perms then true else ans rest

let () = if ans bingo_list then print_endline "Yes" else print_endline "No"
