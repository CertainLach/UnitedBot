package connectors;

import utils.*;

class Connector {
    private var token:String;
    private var name:String;
    private var logger:Logger;
    private var cache:sys.db.Connection;
    
    public function new(token:String,name:String,url:String):Void {
        this.token=token;
        this.name=name;
        this.logger=new Logger(name);
        var needDB=false;
        if(!sys.FileSystem.exists("databases/"+name+".db"))
            needDB=true;
        this.cache=sys.db.Sqlite.open("databases/"+name+".db");
        if(needDB)
            this.createDb(this.cache);
        logger.log("Connecting...");
    }
    private function createDb(cnx:sys.db.Connection):Void {
        logger.log("No need to create DB");
    }
    private function generateRequestString(url:String,method:String,data:Map<String, Dynamic>):String {
        trace("FATAL!");
        throw "generateRequestString() is not overriden!";
    }
}