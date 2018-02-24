//
//  AccountView.swift
//  NBWatch
//
//  Created by admin on 2018/2/8.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit
import SnapKit

typealias LoginActionBlock = (String)->()

class AccountView: BaseView {
   var loginBlock:LoginActionBlock?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let loginBT = UIButton()
        self.addSubview(loginBT)
        loginBT.snp.makeConstraints { (make) in
            make.centerX.equalTo(self)
            make.height.equalTo(44)
            make.width.equalTo(180)
            make.top.equalTo(self).offset(100)
        }
        loginBT.layer.cornerRadius = 5
        loginBT.backgroundColor = UIColor.red
        loginBT.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
        
        let registerBT = UIButton()
        self.addSubview(registerBT)
        registerBT.snp.makeConstraints { (make) in
            make.right.equalTo(loginBT.snp.leftMargin).offset(20)
            make.height.equalTo(44)
            make.width.equalTo(60)
            make.top.equalTo(loginBT.snp.bottomMargin).offset(15)
        }
        registerBT.layer.cornerRadius = 5
        registerBT.backgroundColor = UIColor.blue
        
        let forgetBT = UIButton()
        self.addSubview(forgetBT)
        forgetBT.snp.makeConstraints { (make) in
            make.left.equalTo(loginBT.snp.rightMargin).offset(-20)
            make.height.equalTo(44)
            make.width.equalTo(60)
            make.top.equalTo(loginBT.snp.bottomMargin).offset(15)
        }
        forgetBT.layer.cornerRadius = 5
        forgetBT.backgroundColor = UIColor.yellow
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    @objc func loginAction() {
        log.debug("loginAction")
       loginBlock?("1868204")
    }
   

}
