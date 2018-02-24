//
//  Presenter.swift
//  NBWatch
//
//  Created by admin on 2018/2/7.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class Presenter<E:NSObjectProtocol>: NSObject {
    
    weak var presenterView : E?

    // 初始化函数
    init(view:E) {
        super.init()
        self.presenterView = view
    }

    // 绑定视图
    func attachView(view:E) -> Void {
        self.presenterView = view
    }
    
    //解绑视图
    func detachView(view:E) -> Void {
        self.presenterView = nil
    }
    
    
}
