import connectors.*;
import utils.*;
import data.*;

class Main {
    static public function main():Void {
        displayLogo();
        var logger=new Logger("Main");
        logger.log("Starting connectors");
        Wrappers.start();
    }
    static public function displayLogo():Void {
        var logoLog=new Logger("");
        //TODO: Paste Logo
        logoLog.log('                        GlaDOS Bot v0.0.1');
        logoLog.log('              (C) Unite 2016. All rights reserved.');
    }
}

class Wrappers {
    public static function start(){
        var logger=new Logger("Wrap");
        logger.log("Starting wrapper");
        
        new VK(Constants.ConnectorData.get("VKToken"));
        
        //TODO: Load all from file
        //var tempConnector=Constants.Connectors.get("VK");
        //tempConnector("token");
    }
}