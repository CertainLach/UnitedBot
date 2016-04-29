package utils;

class Logger {
    private var logWriter:String;
    public function new(logWriter):Void {
        this.logWriter=logWriter.toUpperCase();
        if(logWriter=="")
            this.logWriter="";
        else
            this.logWriter="["+this.logWriter+"]";
    }
    public function log(line):Void {
        //TODO: Should be crossplatform
        cpp.Lib.println(d(1)+d(92)+this.logWriter+d(0)+" "+d(1)+line+d(0));
    }
    public function d(code:Int):String {
        return "\x1B["+code+"m";
    }
}