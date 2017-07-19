/**
 *
 * main() will be invoked when you Run This Action.
 *
 * @param OpenWhisk actions accept a single parameter,
 *        which must be a JSON object.
 *
 * In this case, the params variable will look like:
 *     { "message": "xxxx" }
 *
 * @return which must be a JSON object.
 *         It will be the output of this action.
 *
 */

import KituraNet
import Foundation
import SwiftyJSON

func main(args: [String:Any]) -> [String:Any] {
    
    
    //Add Your credentials
    let appSecret = "xxxxx"
    let appID = "xxxxxx"
    let appRegion = ".ng.bluemix.net"

    let response  = Whisk.invoke(actionNamed:"/whisk.system/pushnotifications/sendMessage",withParameters:["appSecret":appSecret,"appId":appID,"text":messages!,"apnsPayload":dd,"apnsType":"MIXED","tagNames":[tag!]])

    return [ "greeting" : response ]
}
