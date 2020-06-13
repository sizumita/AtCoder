let n = read_int ()
let p = Array.init n @@ fun _ -> Scanf.scanf " %d" @@ fun a -> a

let rec loop i ans =
  if i >= n then ans else
  if p.(i) != i+1 then loop (i+1) ans+1 else loop (i+1) ans

let _ = (if loop 0 0 > 2 then "NO" else "YES") |> print_endline
