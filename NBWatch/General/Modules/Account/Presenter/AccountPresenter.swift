//
//  AccountPresenter.swift
//  NBWatch
//
//  Created by admin on 2018/2/8.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class AccountPresenter: BasePresenter{
    
    weak var myVC:LoginViewController?
    
     init(vc:LoginViewController) {
        super.init()
        myVC = vc
    }
    
    func getDataFromUrl(url:String){
        
        NetProvider.request(.login(account:"18682047063",password:"52d4a83215565368f94d3e340e7125e7"), completion: {result in
            switch result {
            case let .success(response):
                do{
                    let any = try response.mapJSON()
                    print("result = \(any)")
                    let isConform:Bool? =  self.myVC?.conforms(to: AccountProtocol.self)
                    if isConform! {
                        log.debug("遵守")
                        self.myVC?.getDataFromUrl(url: "传递过来的事件")
                        self.myVC?.checkIsLogin()
                        self.myVC?.present(BaseTabViewController(), animated: true, completion: nil)
                    }
                }catch{}
            
            default:
                print("defalut")
                
            }
        })
        
    }
    
}
