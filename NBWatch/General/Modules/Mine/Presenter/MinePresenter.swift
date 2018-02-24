//
//  MinePresenter.swift
//  NBWatch
//
//  Created by admin on 2018/2/24.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class MinePresenter: BasePresenter {

    weak var _view:MineViewController?
    init(view:MineViewController) {
        super.init()
        _view = view
    }
    
    func cellAction(_ index:CellIndex) {
        switch index {
        case .Msg:
            log.debug("Msg")
            _view?.hidesBottomBarWhenPushed = true
            _view?.navigationController?.pushViewController(PwdResetViewController(), animated: true)
            _view?.hidesBottomBarWhenPushed = false

        case .Cache:
            log.debug("Cache")
        default:
            log.debug("default")
        }
    }
    
}
