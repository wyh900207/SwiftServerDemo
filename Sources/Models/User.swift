//
// Created by 王源鸿 on 2017/9/1.
//

import Foundation
import PerfectLib

class User: JSONConvertibleObject {
    static let registerName = "user"
    var id = 0
    var name = ""
    var psw = ""

    override func setJSONValues(_ values: [String: Any]) {
        self.name = getJSONValue(named: "name", from: values, defaultValue: "")
        self.psw = getJSONValue(named: "psw", from: values, defaultValue: "")
    }

    override func getJSONValues() -> [String: Any] {
        return [
            JSONDecoding.objectIdentifierKey: User.registerName,
            "name": name,
            "psw": psw,
        ]
    }
}
