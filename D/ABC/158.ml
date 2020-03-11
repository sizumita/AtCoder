let s = read_line ()
let q = read_int ()

let string_rev s =
  let len = String.length s in
  String.init len (fun i -> s.[len - 1 - i])

let add_p result line_list reversed =
    match List.nth line_list 1 with
    | "1" -> if not reversed then (List.nth line_list 2) ^ result else result ^ (List.nth line_list 2)
    | _ -> if not reversed then result ^ (List.nth line_list 2) else (List.nth line_list 2) ^ result


let reverse p =
    match p with
    | true -> false
    | false -> true

let rec ans r s reversed = 
    match s with
    | 0 -> if not reversed then r else string_rev r
    | _ -> match read_line() with
           | x -> match x.[0] with
                  | '1' -> ans r (s-1) (reverse reversed)
                  | _ -> ans (add_p r (String.split_on_char ' ' x) reversed) (s-1) reversed

let _ = print_endline (ans s q false)
