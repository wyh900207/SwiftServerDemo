//
// Created by HomerLynn on 2017/8/31.
//

import Foundation
import PerfectLib
import PerfectHTTP
import PerfectHTTPServer

extension Routes {
    mutating func userRoutes() {
        add(method: .get, uri: "/user/login", handler: User.login())
    }
}

struct User {
    static func login() -> RequestHandler {
        return {
            (request, response) in
            response.setHeader(.contentType, value: "text/html")
            response.setBody(string: "login success")
            response.completed()
        }
    }
}