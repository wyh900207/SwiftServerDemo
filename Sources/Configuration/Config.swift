//
// Created by 王源鸿 on 2017/8/31.
//

import Foundation
import PerfectLib
import MySQL

var pwdSecret: String!

/// MySQL 配置
struct MySQLConfig {
    var db: String
    var host: String
    var user: String
    var password: String
    var port: UInt16
}

func mysqlConfig() -> MySQL? {
//    let serverConfig = ServerConfiguration()
//    let db = serverConfig.db
//    let host = serverConfig.host
//    let user = serverConfig.user
//    let password = serverConfig.password
//    let port = serverConfig.port
//
//    pwdSecret = serverConfig.secret

//    let mysqlConofig = MySQLConfig(
//            db: db,
//            host: host,
//            user: user,
//            password: password,
//            port: port
//    )

    let mysql = MySQL()
    guard mysql.connect() else {
        print(mysql.errorMessage())
        return nil
    }

    return mysql
}
