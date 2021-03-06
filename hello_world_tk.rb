require 'tk'

app = TkRoot.new {
  title "Text Mess";
  padx 100;
  pady 200;
 }


label = TkLabel.new(app){
  text "Hello World"
  font "Arial 16"
  fg "red"
  pack { padx 100; pady 100 }
}

wdgt = TkButton.new(app) {
  text "Click me!"
  pack { padx 100; pady 100 }
  command proc{
    text = "Hello World!"

    Tk.messageBox(
        'type'    => "ok",
        'icon'    => "info",
        'title'   => "Info",
        'message' => text
    )

    Tk.messageBox(
        'type'    => "ok",
        'icon'    => "warning",
        'title'   => "Warning",
        'message' => text
    )

    Tk.messageBox(
        'type'    => "ok",
        'icon'    => "error",
        'title'   => "Error",
        'message' => text
    )
  }


}

but = TkButton.new(app) {
  text "Hello, World!"
  pack { padx 100; pady 100 }
  command proc { puts "Hello World!" }
}



Tk.mainloop
