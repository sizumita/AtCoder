let a = read_line()
    |> String.split_on_char ' '
    |> List.map int_of_string

let n = (List.nth a 0) mod ((List.nth a 1) + (List.nth a 2))
let amari = if n > List.nth a 1 then n else List.nth a 1 

let _ = (((List.nth a 0) / ((List.nth a 1) + (List.nth a 2))) * (List.nth a 1) + amari) |> string_of_int |> print_endline
