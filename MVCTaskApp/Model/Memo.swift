//
//  Memo.swift
//  MVCTaskApp
//
//  Created by 大塚周 on 2020/12/22.
//

import Foundation
import RealmSwift

class Memo: Object {
    @objc dynamic var content: String? = nil
}
