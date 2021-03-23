//
//  ActionSheetViewController.swift
//  nc_weblist
//
//  Created by daito yamashita on 2021/03/23.
//

import UIKit

class ActionSheetViewController: UIViewController{
    @IBAction func showActionSheet(_ sender: Any) {
        // アクションシートを作る
        let actionSheet = UIAlertController(
            title: "タイトル",
            message: "メッセージ文",
            preferredStyle: .actionSheet
        )
        
        // ボタン１
        actionSheet.addAction(
            UIAlertAction(
                title: "ボタン１です",
                style: .default,
                handler: {(action) -> Void in
                    self.hello(action.title!)
                })
        )
        
        // ボタン２
        actionSheet.addAction(
            UIAlertAction(
                title: "ボタン２です",
                style: .default,
                handler: {(action) -> Void in
                    self.hello(action.title!)
                })
        )
        
        // キャンセル
        actionSheet.addAction(
            UIAlertAction(
                title: "キャンセル",
                style: .cancel,
                handler: nil
            )
        )
        
        // 赤色のボタン
        actionSheet.addAction(
            UIAlertAction(
                title: "削除します",
                style: .destructive,
                handler: {(action) -> Void in
                    self.hello(action.title!)
                })
        )
        
        // アラートを表示する
        self.present(
            actionSheet,
            animated: true,
            completion: {
                print("アクションシートが表示された")
            }
        )
    }
    
    func hello(_ msg: String) {
        print(msg)
    }
}
