//
//  ViewController.swift
//  UserdefaultProtocol
//
//  Created by 王源鸿 on 2017/5/22.
//  Copyright © 2017年 HomerIce. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    private func getUserName() -> String? {
        guard let username = UserDefaults.Account.string(.userName) else {
            print("获取不到username")
            return nil
        }

        return username
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
