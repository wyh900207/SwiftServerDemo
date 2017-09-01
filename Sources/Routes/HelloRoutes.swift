//
// Created by 王源鸿 on 2017/8/31.
//

import Foundation
import PerfectLib
import PerfectHTTP
import PerfectHTTPServer

/// Add all hello routes to server
extension Routes {
    mutating func helloRoutes() {
        add(method: .get, uri: "/hello", handler: HelloRoutes.hello())
        add(method: .get, uri: "/user/name", handler: HelloRoutes.show())
    }
}

/// Struct `Hello`
/// defined all routes about hello
struct HelloRoutes {
    static func hello() -> RequestHandler {
        return {
            (request, response) in
            response.setHeader(.contentType, value: "text/html")
            response.setBody(string: "hello world!")
            response.completed()
        }
    }

    static func show() -> RequestHandler {
        return {
            (request, response) in
            response.setHeader(.contentType, value: "text/html")
            response.setBody(string: "user name is: homer lynn")
            response.completed()
        }
    }
}
