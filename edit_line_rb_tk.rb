require 'tk'

app = TkRoot.new {
  title "Window";
  padx 200;
  pady 200
}

line_edit1 = TkEntry.new(app)
line_edit1.pack {
  side "top"
}
label = TkLabel.new(app)
btn_click = TkButton.new(app) {
  text "OK"
  pack { padx 300; pady 250; side "bottom"}
  borderwidth 5
  underline 0
  command proc{
    text = line_edit1.get
    Tk.messageBox(
        'type'    => "ok",
        'icon'    => "info",
        'title'   => "Info",
        'message' => text
    )}
}
Tk.mainloop