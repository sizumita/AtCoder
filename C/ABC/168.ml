let pi = 4. *. atan 1.
let _ = Scanf.sscanf (read_line()) "%f %f %f %f" 
  (fun a b h m ->sqrt @@ 
  a *. a +. b *. b -. 
  2.0 *. a *. b *.
  cos (
    (pi *. m /. 30.0) -. (pi *. (h /. 6.0 +. m /. 360.0)
    )
    )
    ) |> Printf.printf "%.10f\n"
