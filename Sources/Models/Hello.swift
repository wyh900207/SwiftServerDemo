//
// Created by 王源鸿 on 2017/9/1.
//

import Foundation
import PerfectLib
import MySQL

class Hello: JSONConvertibleObject {
    static let registerName = "hello"
    var first = ""
    var last = ""

    override func setJSONValues(_ values: [String: Any]) {
        self.first = getJSONValue(named: "first", from: values, defaultValue: "")
        self.last = getJSONValue(named: "last", from: values, defaultValue: "")
    }

    override func getJSONValues() -> [String: Any] {
        return [
            JSONDecoding.objectIdentifierKey:Hello.registerName,
            "first": first,
            "last": last
        ]
    }
}