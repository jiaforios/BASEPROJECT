//
//  Configure+AppDelegate.swift
//  NBWatch
//
//  Created by admin on 2018/2/23.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

extension AppDelegate{
    
    func configureAll(){
        logManager()
        GaodeMap()
    }
    
    //日志
    func logManager(){
        let cachePath = FileManager.default.urls(for: .cachesDirectory,
                                                 in: .userDomainMask)[0]
        let logURL = cachePath.appendingPathComponent("log.txt")
        log.setup(level: .debug, showThreadName: true, showLevel: true,
                  showFileNames: true, showLineNumbers: true,
                  writeToFile: logURL, fileLevel: .debug)
    }
    
    // 地图
    func GaodeMap() {
        AMapServices.shared().enableHTTPS = true
        AMapServices.shared().apiKey = GaodeMapKey
    }
}
