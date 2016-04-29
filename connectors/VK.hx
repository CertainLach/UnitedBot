package connectors;

import utils.*;

class VK extends Connector {
    public function new(token:String):Void {
        super(token,"vkco","https://api.vk.com/method/");
    }
    private override function createDb(cnx:sys.db.Connection):Void {
        logger.log("Creating database...");
        sys.db.Manager.cnx = cnx;
        sys.db.TableCreate.create(VKUser.manager);
    }
    private override function generateRequestString(url:String,method:String,data:Map<String, Dynamic>):String {
        return url+method+"?"+data;
    }
}
class VKUser extends sys.db.Object {
    public var id : Int;
    public var fn : String;
    public var ln : String;
    public var lang : String;
    public var city : String;
}