//
//  NetManager.swift
//  NBWatch
//
//  Created by admin on 2018/2/9.
//  Copyright © 2018年 com. All rights reserved.
//

import Foundation
import Moya
import SwiftProgressHUD

let networkPlugin = NetworkActivityPlugin { (changeType,tartgetType) in
    switch changeType {
    case .began:
        SwiftProgressHUD.showWait()
    case .ended:
        SwiftProgressHUD.hideAllHUD()
    }
}



let requestClosure = { (endpoint: Endpoint<NetManager>, done: (NSURLRequest) -> Void) in
    //可以在这里修改request
    let request: NSMutableURLRequest = try endpoint.urlRequest() as! NSMutableURLRequest
    request.httpShouldHandleCookies = false // 禁用cookies
    request.timeoutInterval = 30 // 超时时间
    done(request)
}



let NetProvider = MoyaProvider<NetManager>(plugins:[networkPlugin])


enum NetManager {
    case login(account:String, password:String)
    case register
    case searchPassword
}

extension NetManager: TargetType {
    
    var baseURL:URL {
        switch self {
        case .login(_,_):
            return URL.init(string: "https://kidwatch.hojy.com")!
        default:
            return URL.init(string: "")!
        }
    }
    
    var path:String {
        switch self {
        case .login(_,_):
            return "/hgts/api/acountLogin"
        default:
            return "/posts"
        }
    }
    
    var method: Moya.Method {
        
        return .get
    }
    var headers: [String:String]? {
       return nil
    }
    
    var parameters: [String:Any]? {
        switch self {
        case .login(let account, let password):
            var params:[String:Any] = [:]
            params["mobile"] = account
            params["password"] = password
            return params
        default:
            return nil
        }
    }
    
    var sampleData: Data {
        switch self {
        case .login:
            return "login".data(using: String.Encoding.utf8)!
        default:
            return "default".data(using: String.Encoding.utf8)!
        }
    }
    
    var parameterEncoding: ParameterEncoding {
        return URLEncoding.default
    }
    
    var task: Task {
        
        return .requestParameters(parameters: self.parameters!, encoding: self.parameterEncoding)
    }
    
    var validate: Bool {
        return false
    }
   
}



/*
    /// The method used for parameter encoding.
    var parameterEncoding: ParameterEncoding {
        return URLEncoding.default
    }
    
    /// Provides stub data for use in testing.
    var sampleData: Data {
            return "".data(using: String.Encoding.utf8)!
    }
    
    /// The type of HTTP task to be performed.
    var task: Task {
        return .request
    }
    
    /// Whether or not to perform Alamofire validation. Defaults to `false`.
    var validate: Bool {
        return false
    }
    
}
*/
