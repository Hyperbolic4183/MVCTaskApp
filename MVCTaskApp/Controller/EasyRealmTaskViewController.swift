//
//  EasyRealmTaskViewController.swift
//  MVCTaskApp
//
//  Created by 大塚周 on 2020/12/21.
//

import UIKit
import RealmSwift
import SnapKit

final class EasyMemoViewController: UIViewController {
    var myView = MemoAddView()
    var memoModel: MemoModel?
    
    private var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        setupMyView()
        setupTableView()
    }
    
    private func setupMyView() {
        myView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: 350)
        myView.delegate = self
        view.addSubview(myView)
    }
    
    private func setupTableView() {
        let PointOfTableView = CGPoint(x: view.bounds.minX, y: view.bounds.minY + 350)
        let RectOfTableView = CGRect(origin: PointOfTableView, size: CGSize(width: view.bounds.size.width, height: view.bounds.height-350))
        tableView = UITableView(frame: RectOfTableView, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        view.addSubview(tableView)
    }
}

extension EasyMemoViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return memoModel?.memos.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let memo: Memo = memoModel?.memos[indexPath.row] ?? Memo()
        cell.textLabel?.text = memo.content
        return cell
    }
}

extension EasyMemoViewController: MemoAddViewDelegate {
    func addMemo(_ memo: String) {
        print("addMemo from Controller")
        print("memosは\(memoModel?.memos)")
        memoModel?.addMemo(text: memo)
        tableView.reloadData()
    }
}
