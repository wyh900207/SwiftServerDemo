//
// Created by 王源鸿 on 2017/8/31.
//

#if os(Linux)
struct ServerConfiguration {
    let url = "http://localhost:8088"
    let doMain = "localhost"
    let db = "vapor"
    let host = "127.0.0.1"
    let user = "root"
    let password = "password"
    let port: UInt16 = 3306
    let httpPort = 80
    let secret = "homerlynnhellow"
}
#else
struct ServerConfiguration {
    let url = "http://localhost:8088"
    let doMain = "localhost"
    let db = "vapor"
    let host = "127.0.0.1"
    let user = "root"
    let password = "password"
    let port: UInt16 = 3306
    let httpPort = 8188
    let secret = "homerlynnhellow"
}
#endif
