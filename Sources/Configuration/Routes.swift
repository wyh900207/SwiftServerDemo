//
// Created by 王源鸿 on 2017/8/31.
//

import PerfectLib
import PerfectHTTP
import PerfectHTTPServer

extension Routes {
    mutating func makeRoutes() {
        /// Hello routes
        helloRoutes()
        /// User routes
        userRoutes()
    }
}
