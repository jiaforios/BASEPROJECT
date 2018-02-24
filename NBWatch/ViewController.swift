//
//  ViewController.swift
//  NBWatch
//
//  Created by admin on 2018/2/7.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit
import Kingfisher
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let base = LoginModel()
        base.name1 = "asd"
        base.age1 = "100"
        print(base.toJSON_p()!)
        
        let jsonString = "{\"name1\":1.1,\"age1\":\"hello\",\"int\":1}"
        
        if let obj = BaseModel.deserialize_p(from: jsonString) {
            print(obj.name1!)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

