//
// Created by 王源鸿 on 2017/8/31.
//

import PerfectLib
import PerfectHTTP
import PerfectHTTPServer

func makeRoutes(routes: inout Routes) {
    routes.add(method: .get, uri: "/hello", handler: Hello.hello())
}
