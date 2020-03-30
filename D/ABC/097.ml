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

  method unite2 x y =
    let rx = self#root x in
    let ry = self#root y in
    if rx != ry then par.(rx) <- ry

  method same x y = self#root x = self#root y
end

let nm = Scanf.sscanf (read_line()) "%d %d" (fun n m ->
  [n; m]
)
let n = List.hd nm
let m = List.nth nm 1
let p = Array.init n (fun _ -> Scanf.scanf "%d " (fun a -> a))

let tree = new union_find n
let _ = tree#init
let rec loop i =
  match i with
  | i when i = m -> ()
  | _ -> Scanf.scanf "%d %d\n" (fun x y -> tree#unite (x-1) (y-1)); loop (i+1)
let _ = loop 0
let _ = List.map (fun k -> tree#root k) @@ Array.to_list tree#get_par
let rec ans i = 
  match i with
  | i when i = n -> 0
  | _ -> if tree#same i ( p.(i) - 1) then 1 + ans (i+1) else ans (i+1)
let _ = Printf.printf "%d\n" @@ ans 0
