#use "topfind"
#require "websocket"
#require "lwt";;
#require "Lwt.syntax";;

(* Set up the uri address *)
let ws_addr = Uri.of_string "ws://echo.websocket.org"

(* Set up the websocket connection *)
let ws_conn = Websocket.open_connection ~tls:false ws_addr

(* Function to print a frame reply *)
let f (x : Websocket.Frame.t) = 
  let s = Websocket.Frame.content x in
    print_string s;
    Lwt.return ()

(* push a string *)
let push_msg = 
  ws_conn
  >>= fun (_, ws_pushfun) ->
    let ws_frame = Websocket.Frame.of_string msg in
      ws_pushfun (Some ws_frame);
      Lwt.return ()

(* print stream element *)
let print_element () = 
  ws_conn
  >>= fun (ws_stream, _) ->
    Lwt_stream.next ws_stream
    >>= f

(* push string and print response *)
let push_print msg = 
  ws_conn
  >>= fun(ws_stream, ws_pushfun) ->
    let ws_frame = Websocket.Frame.of_string msg in
        ws_pushfun (Some ws_frame);
        Lwt_stream.next ws_stream >>= f