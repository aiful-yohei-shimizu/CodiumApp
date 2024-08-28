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

    // viewDidApperでprintRandomValueメソッドを実行する
    override func viewDidAppear(_ animated: Bool) {
        printRandomValue()
    }

    // ランダムで1~10の整数値を返却し返却値が10以上だったらエラーをthrowするメソッド
    func randomValue() throws -> Int {
        // 1~10の整数値をランダムに生成
        let randomValue = Int.random(in: 1...10)
        if randomValue >= 10 {
            throw NSError(domain: "randomValue", code: 0, userInfo: nil)
        }
        return randomValue
    }

    // randomValueをdo-catch文で実行し、doの場合は結果をprint、catchの場合はエラーアラートを表示する。
    func printRandomValue() {
        do {
            let result = try randomValue()
            print(result)
        } catch {
            let alert = UIAlertController(title: "エラー", message: "ランダムの数字が10を超えました。", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
}

