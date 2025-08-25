//
//  ViewController.swift
//  WJOSLog
//
//  Created by jingwei on 2025/8/25.
//  https://juejin.cn/post/7438455467448057919

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        
        WJOSLog.shared.oslogTest()

    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        WJOSLog.shared.log("touchesBegan", type: .error)
    }
}

