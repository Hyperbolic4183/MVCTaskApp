//
//  tableView.swift
//  MVCTaskApp
//
//  Created by 大塚周 on 2020/12/22.
//

import Foundation
import UIKit

final class TableViewController: UITableViewController {

    var numbers: [String] = ["リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖","リンゴ","ビスケット","砂糖"]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        navigationItem.title = "Center"
        tableView.dataSource = self
        tableView.delegate  = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = numbers[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected")
        
    }
}
