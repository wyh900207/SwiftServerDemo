//
// Created by 王源鸿 on 2017/8/31.
//

import Foundation
import PerfectLib
import PerfectHTTP
import PerfectHTTPServer

class Hello {
    class func hello() -> RequestHandler {
        return { request, response in
            response.setHeader(.contentType, value: "text/html")
            response.setBody(string: "hello world")
            response.completed()
        }
    }
}
