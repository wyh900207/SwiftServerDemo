//
// Created by 王源鸿 on 2017/9/1.
//

import Foundation
import PerfectLib
import MySQL

struct UserService {
    static func queryAllUsers() -> String {
        let sql = "select * from users"
        guard let result = mysql.query(sql: sql) else {
            return "没有查到"
        }

        return try! result.jsonEncodedString()
    }
}
