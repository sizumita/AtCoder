class union_find n = object (self)
  val mutable par = ( [| |] : int array)
  method init = 
    par <- Array.init n (fun a -> a)
  method get_par = par

  method root s = 
    let rec loop x =
      if par.(x) = x then x else (par.(x) <- loop par.(x); par.(x))
    in loop s

  method rank s =
    let rec loop x n =
      if par.(x) = x then n else loop par.(x) (n+1)
    in loop s 1

  method unite x y =
    let xrank = self#rank x in
    let yrank = self#rank x in
    let rx = self#root x in
    let ry = self#root y in
    if rx != ry then (if xrank < yrank then par.(rx) <- ry else par.(ry) <- rx)

  method same x y =
    let rx = self#root x in
    let ry = self#root y in
    rx = ry
end

let nm = Scanf.sscanf (read_line()) "%d %d" (fun n m ->
  [n; m]
)
let n = List.hd nm
let m = List.nth nm 1
let tree = new union_find n
let _ = tree#init
let rec m_loop i =
  match i with
  | i when i = m -> ()
  | _ -> Scanf.sscanf (read_line()) "%d %d" (fun a b ->
    tree#unite (a-1) (b-1)
); m_loop (i+1)
let rec loop i =
  match i with
  | i when i > (n-1) -> 0
  | _ -> if tree#same 0 i then loop (i+1) else (tree#unite 0 (i); 1 + loop (i+1))

let _ = m_loop 0
let _ = Printf.printf "%d\n" (loop 1)
(* let _ = Array.iter (fun a -> Printf.printf "%d " a) tree#get_par; print_endline "" *)
