import PerfectLib
import PerfectHTTP
import PerfectHTTPServer

let server = HTTPServer()

/// HTTPServer 配置
let serverConfiguration = ServerConfiguration()
server.serverPort = serverConfiguration.port

/// Routes 配置
var routes = Routes()
makeRoutes(routes: &routes)

/// 配置 routes 到 server
server.addRoutes(routes)

/// 启动 server
do {
    try server.start()
} catch PerfectError.networkError(let err, let msg) {
    print("网络错误: \(err) \(msg)")
}
