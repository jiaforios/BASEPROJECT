//
//  LoginViewController.swift
//  NBWatch
//
//  Created by admin on 2018/2/8.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {

    var presenter:AccountPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        presenter = AccountPresenter.init(vc: self) as AccountPresenter
        let bView = AccountView.init(frame: CGRect.zero)
        bView.backgroundColor = UIColor.gray
        view.addSubview(bView)
        
        bView.loginBlock = {(name)->() in
            self.presenter?.getDataFromUrl(url: "json")
        }
    }

    // 触摸事件测试
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

/*
 通过AccountProtocol协议 返回的事件
 */
extension LoginViewController:AccountProtocol{
    
    func checkIsLogin() {
        log.debug("login")
    }
    
    func getDataFromUrl(url: String) {
        print(url)
    }
}
