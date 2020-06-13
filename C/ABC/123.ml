let rec print_list lst=
  match lst with
  | [] -> Printf.printf "\n"
  | first :: rest -> Printf.printf "%d " first ; print_list rest
let n = read_int ()
let a = read_int ()
let b = read_int ()
let c = read_int ()
let d = read_int ()
let e = read_int ()
let state = Array.init 6 (fun _ -> 0)
let _ = state.(0) <- n


let get_move i place =
  if state.(place) < i then state.(place) else i

let a_to_b () = if state.(0) = 0 then () else (let p = get_move a 0 in state.(0) <- (state.(0) - p); (state.(1) <- state.(1) + p))
let b_to_c () = if state.(1) = 0 then () else (let p = get_move b 1 in state.(1) <- (state.(1) - p); (state.(2) <- state.(2) + p))
let c_to_d () = if state.(2) = 0 then () else (let p = get_move c 2 in state.(2) <- (state.(2) - p); (state.(3) <- state.(3) + p))
let d_to_e () = if state.(3) = 0 then () else (let p = get_move d 3 in state.(3) <- (state.(3) - p); (state.(4) <- state.(4) + p))
let e_to_end () = if state.(4) = 0 then () else (let p = get_move e 4 in state.(4) <- (state.(4) - p); (state.(5) <- state.(5) + p))

let rec loop time = 
  e_to_end (); d_to_e (); c_to_d (); b_to_c (); a_to_b ();
  (* print_list @@ Array.to_list state; *)
  if state.(5) >= n then time else loop @@ time + 1

let _ = Printf.printf "%d\n" @@ loop 1


