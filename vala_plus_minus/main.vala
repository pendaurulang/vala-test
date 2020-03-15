using Gtk;
public class vala_dft : Gtk.Window {
    
    private Gtk.Label label1; private Gtk.Label label2;
    private Gtk.Button Button1; private Gtk.Button Button2;

    public vala_dft(){
                
        this.title = "vala_dft";
        this.destroy.connect(Gtk.main_quit);
        this.window_position = WindowPosition.CENTER;
        this.set_default_size(350, 70);
        creator();
        
    }
    private void creator (){
        this.label1 = new Gtk.Label("0");
        this.label2 = new Gtk.Label("9");
        this.Button1 = new Gtk.Button.with_label("+"); this.Button1.clicked.connect(on_plus);
        this.Button2 = new Gtk.Button.with_label("-"); this.Button2.clicked.connect(on_minus);
        Gtk.Box vert_box = new Gtk.Box(Gtk.Orientation.VERTICAL, 5);
        vert_box.add(this.label1);
        vert_box.add(this.label2);
        vert_box.add(this.Button1);
        vert_box.add(this.Button2);
        this.add(vert_box);
    }
    
    void on_plus(Gtk.Button btn){
        int num = int.parse(this.label1.get_label());
        int num1 = int.parse(this.label2.get_label());
    
        num+= 1;
        num1+= 1;
    
        this.label1.set_label(num.to_string());
        this.label2.set_label(num1.to_string());
    
    }

    void on_minus(Gtk.Button btn){
        int num = int.parse(this.label1.get_label());
        int num1 = int.parse(this.label2.get_label());
    
        num-= 1;
        num1-= 1;
    
        this.label1.set_label(num.to_string());
        this.label2.set_label(num1.to_string());
    
    }

}



int main(string[] args) {
    Gtk.init(ref args);

    vala_dft app = new vala_dft();

    app.destroy.connect(Gtk.main_quit);

    app.show_all();

    Gtk.main();

    return 0;
}