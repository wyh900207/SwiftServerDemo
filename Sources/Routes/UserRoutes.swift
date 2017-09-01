//
// Created by HomerLynn on 2017/8/31.
//

import Foundation
import PerfectLib
import PerfectHTTP
import PerfectHTTPServer

extension Routes {
    mutating func userRoutes() {
        add(method: .get, uri: "/user/users", handler: UserRoutes.allUsers())
    }
}

struct UserRoutes {
    static func allUsers() -> RequestHandler {
        return {
            (request, response) in
            let json = UserService.queryAllUsers()
            response.setHeader(.contentType, value: "text/json")
            response.setBody(string: json)
            response.completed()
        }
    }
}