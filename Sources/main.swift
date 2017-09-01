import PerfectLib
import PerfectHTTP
import PerfectHTTPServer
import MySQL
import MySQLStORM

let server = HTTPServer()

let mysql = MySQL()

/// HTTPServer 配置
let serverConfiguration = ServerConfiguration()
server.serverPort = serverConfiguration.httpPort

/// Routes 配置
var routes = Routes()
routes.makeRoutes()

/// 配置 routes 到 server
server.addRoutes(routes)

/// 启动 server
do {
    try server.start()
} catch PerfectError.networkError(let err, let msg) {
    print("网络错误: \(err) \(msg)")
}
