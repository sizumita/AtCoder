let n = read_int ()
let k () =
  let rec loop i =
    if i < 10 then
      if n mod i = 0 && 1 <= n / i && n / i <= 9 then "Yes" else loop (i+1)
    else "No"
  in loop 1

let _ = k () |> print_endline