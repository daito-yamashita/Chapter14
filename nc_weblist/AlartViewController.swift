//
//  AlartViewController.swift
//  nc_weblist
//
//  Created by daito yamashita on 2021/03/23.
//

import UIKit

class AlartViewController: UIViewController, UITextFieldDelegate {

    @IBAction func showAlert(_ sender: Any) {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        alert.title = "タイトル文"
        alert.message = "メッセージ文"
        
        alert.addTextField(configurationHandler: {(textField) -> Void in
            textField.delegate = self
        })
        
        // ボタン１
        alert.addAction(
            UIAlertAction(
                title: "ボタン１です",
                style: .default,
                handler: {(action) -> Void in
                    self.hello(action.title!)
                })
        )
        
        // ボタン２
        alert.addAction(
            UIAlertAction(
                title: "ボタン２です",
                style: .default,
                handler: {(action) -> Void in
                    self.hello(action.title!)
                })
        )
        
        // キャンセル
        alert.addAction(
            UIAlertAction(
                title: "キャンセル",
                style: .cancel,
                handler: nil
            )
        )
        
        // 赤色のボタン
        alert.addAction(
            UIAlertAction(
                title: "削除します",
                style: .destructive,
                handler: {(action) -> Void in
                    self.hello(action.title!)
                })
        )
        
        // アラートを表示する
        self.present(
            alert,
            animated: true,
            completion: {
                print("アラートが表示された")
            }
        )
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(textField.text ?? "")
    }
    
    func hello(_ msg: String) {
        print(msg)
    }
}
