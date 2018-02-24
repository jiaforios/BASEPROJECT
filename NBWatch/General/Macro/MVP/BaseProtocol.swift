//
//  BaseProtocol.swift
//  NBWatch
//
//  Created by admin on 2018/2/8.
//  Copyright © 2018年 com. All rights reserved.
//

import Foundation

@objc protocol MyBaseProtocol {
   
    @objc optional func getDataFromUrl(url:String)
    @objc optional func postDataFromUrl(url:String)
}
