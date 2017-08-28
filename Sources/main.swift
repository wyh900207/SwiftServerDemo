import PerfectLib
import PerfectHTTP
import PerfectHTTPServer

/// HTTPServer object
/// all api routes should be add to it
let server = HTTPServer()
/// The system port to listen server
server.serverPort = 8088

/// All routes add to this routes
var routes = Routes()

/// Version_1 api
var api1Routes = Routes(baseUri: "/v1")
/// Version_2 api
var api2Routes = Routes(baseUri: "/v2")

var api = Routes()
api.add(method: .get, uri: "/call1") {
    request, response in
    response.setHeader(.contentType, value: "text/html")
    response.setBody(string: "程序接口API版本v1已经调用")
    response.completed()
}

api.add(method: .get, uri: "/call2") {
    request, response in
    response.setHeader(.contentType, value: "text/html")
    response.setBody(string: "程序接口API版本v2已经调用")
    response.completed()
}

/// Add `api` routes to `api1Routes`
api1Routes.add(routes: api)
/// Add `api` routes to `api2Routes`
api2Routes.add(routes: api)

/// Update `/call2` api of api2Routes
api2Routes.add(method: .get, uri: "/call2") {
    request, response in
    response.setHeader(.contentType, value: "text/html")
    response.setBody(string: "程序接口API版本v2已经调用第二种方法")
    response.completed()
}

routes.add(routes: api1Routes)
routes.add(routes: api2Routes)

server.addRoutes(routes)

do {
    try server.start()
} catch PerfectError.networkError(let err, let msg) {
    print("network error: \(err) \(msg)")
}
