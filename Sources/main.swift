import PerfectLib
import PerfectHTTP
import PerfectHTTPServer

let server = HTTPServer()

var routes = Routes()
routes.add(method: .get, uri: "/") {
    (request, response) in
    response.setHeader(.contentType, value: "text/html")
    response.appendBody(string: "hello")
    response.completed()
}

server.addRoutes(routes)

server.serverPort = 8088

do {
    try server.start()
} catch PerfectError.networkError(let err, let msg) {
    print("network error: \(err) \(msg)")
}
