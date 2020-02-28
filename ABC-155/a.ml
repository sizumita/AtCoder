let kawaisou a b c = 
    match a, b, c with
        | a, b, c when a != b && b != c && a != c -> "No"
        | a, b, c when a = b && b != c -> "Yes"
        | a, b, c when a != b && b = c -> "Yes"
        | a, b, c when a = c && b != c -> "Yes"
        | _ -> "No";;

let () = print_endline (Scanf.scanf "%d %d %d" kawaisou);;
