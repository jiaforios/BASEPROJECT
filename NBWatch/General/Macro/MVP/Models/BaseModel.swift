//
//  BaseModel.swift
//  NBWatch
//
//  Created by admin on 2018/2/8.
//  Copyright © 2018年 com. All rights reserved.
//
/*
 https://github.com/alibaba/HandyJSON
 BaseModel 所有model 的父类继承自HandyJSON
 MARK: 使用HandyJSON处理json/model互转，常用方法封装处理方便替换
 */


import UIKit
import HandyJSON

class BaseModel: HandyJSON {

    var name1:String?
    var age1:String?
    
    
    required init() {}
    
    /*
     *
        转json
     */
    func toJSON_p() -> [String : Any]? {
        return self.toJSON()
    }
    
    /*
     *
        转jsonString
     */
    func toJSONString_p(prettyPrint: Bool) -> String? {
        
        return self.toJSONString(prettyPrint:prettyPrint)
    }
    
    /*
     *
        json转model
     */
    class func deserialize_p(from:String) ->BaseModel?{
        
        return  self.deserialize(from: from)
    }
    

}
