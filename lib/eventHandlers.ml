open OcamlCanvas.V1

let draw_dot
    { Event.canvas = c; timestamp = _; data = { Event.position = x, y; _ } } =
  Canvas.setFillColor c Color.red;
  Canvas.clearPath c;
  Canvas.arc c
    ~center:(float_of_int x, float_of_int y)
    ~radius:5.0 ~theta1:0.0 ~theta2:(2.0 *. Const.pi) ~ccw:false;
  Canvas.fill c ~nonzero:false

let (on_button_down : unit React.event) = React.E.map draw_dot Event.button_down

let (on_key_down : unit React.event) =
  React.E.map
    (fun {
           Event.canvas = _;
           timestamp = _;
           data = { Event.key; char = _; flags = _ };
           _;
         } -> if key = KeyEscape then Backend.stop ())
    Event.key_down

let on_frame =
  React.E.map (fun { Event.canvas = _; timestamp = _; _ } -> ()) Event.frame

let on_close =
  React.E.map
    (fun { Event.canvas = _; timestamp = _; data = () } -> Backend.stop ())
    Event.close
