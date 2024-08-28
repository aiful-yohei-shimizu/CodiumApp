//
//  ViewController.swift
//  CodiumApp
//
//  Created by 清水陽平 on 2024/08/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Buttonタップ時にダイアログを表示する処理
    @IBAction func tapButton(_ sender: Any) {
        // タイトルとメッセージを設定
        let alert = UIAlertController(title: "タイトル", message: "メッセージ", preferredStyle: .alert)
        // OKベタンを追加
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        // UIAlertControllerを表示
        self.present(alert, animated: true, completion: nil)
    }
}

