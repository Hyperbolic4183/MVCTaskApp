//
//  MemoAddView.swift
//  MVCTaskApp
//
//  Created by 大塚周 on 2020/12/22.
//

import UIKit
import SnapKit

protocol MemoAddViewDelegate: class {
    func addMemo(_ memo: String)
}


class MemoAddView: UIView {
    
     lazy var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "入力してください"
        textField.delegate = self
        return textField
    }()
    
     lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("追加する", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(addButtonTapped), for: .touchUpInside)
        return button
    }()
    
    weak var delegate: MemoAddViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubViews(textField, button)
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setLayout() {
        textField.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        button.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalTo(textField.snp.bottom).offset(30)
        }
    }
    
    @objc func addButtonTapped() {
        print("addButtonTapped from View")
        guard let memo = textField.text else { return }
        print("textfiled入力されたのは\(memo)です")
        delegate?.addMemo(memo)
    }
    
}

extension MemoAddView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}
