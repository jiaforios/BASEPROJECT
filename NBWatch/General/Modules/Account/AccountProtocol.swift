//
//  AccountProtocol.swift
//  NBWatch
//
//  Created by admin on 2018/2/8.
//  Copyright © 2018年 com. All rights reserved.
//

import Foundation

@objc protocol AccountProtocol:MyBaseProtocol {
  @objc optional func checkIsLogin()

}
