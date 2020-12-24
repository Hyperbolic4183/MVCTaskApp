//
//  DataSource.swift
//  MVCTaskApp
//
//  Created by 大塚周 on 2020/12/22.
//

import Foundation
import RealmSwift

class MemoModel {
    
    private(set) var memos: Results<Memo>!
    
    init() {
        print("init")
        let realm = try! Realm()
        memos = realm.objects(Memo.self)
    }
    
    func addMemo(text: String) {
        print("addMemoが実行された")
        let memo: Memo = Memo()
        memo.content = text
        let realm = try! Realm()
        try! realm.write {
            realm.add(memo)
        }
    }
}
