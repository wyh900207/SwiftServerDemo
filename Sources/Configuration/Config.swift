//
// Created by 王源鸿 on 2017/8/31.
//

import Foundation
import PerfectLib
import MySQL
import MySQLStORM

///
extension MySQL {
    public func query(sql: String) -> [[String?]]? {
        let serverConfig = ServerConfiguration()
        let host = serverConfig.host
        let user = serverConfig.user
        let password = serverConfig.password
        let port = serverConfig.mysqlPort
        let db = serverConfig.db

        guard mysql.connect(host: host, user: user, password: password, db: db, port: port) else {
            print("connect mysql server failed!")
            return nil
        }

        defer {
            mysql.close()
        }

        guard mysql.query(statement: sql) else {
            print("查询失败!")
            return nil
        }

        let results = mysql.storeResults()
        var resutltArray = [[String?]]()

        while let row = results?.next() {
            resutltArray.append(row)
        }

        return resutltArray
    }
}
