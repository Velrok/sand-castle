open OcamlCanvas.V1
open SandCastle

let () =
  Backend.init ();

  let width = 1200 in
  let height = 800 in
  let win_pos = (100, 100) in
  let win_size = (width, height) in
  let title = "Sand Castle" in
  let c = Canvas.createOnscreen ~title ~pos:win_pos ~size:win_size () in

  Canvas.setFillColor c Color.black;
  Canvas.fillRect c ~pos:(0.0, 0.0)
    ~size:(float_of_int width, float_of_int height);
  Canvas.show c;

  Backend.run (fun () ->
      ignore EventHandlers.on_close;
      ignore EventHandlers.on_key_down;
      ignore EventHandlers.on_button_down;
      ignore EventHandlers.on_frame;
      Printf.printf "Goodbye !\n")
