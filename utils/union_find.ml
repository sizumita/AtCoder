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