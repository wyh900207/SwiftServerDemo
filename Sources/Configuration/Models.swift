//
// Created by 王源鸿 on 2017/9/1.
//

import Foundation
import PerfectLib
import MySQL

func registerModels() {
    /// User model
    JSONDecoding.registerJSONDecodable(name: User.registerName) { return User() }
    /// Hello model
    JSONDecoding.registerJSONDecodable(name: Hello.registerName) { return Hello() }
}