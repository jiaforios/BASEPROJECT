//
//  Macros.swift
//  KidWatch
//
//  Created by admin on 2017/6/24.
//  Copyright © 2017年 com. All rights reserved.
//

import UIKit
import XCGLogger

let kVersion = (UIDevice.current.systemVersion as NSString).floatValue
//  屏幕宽度
let kScreenW = UIScreen.main.bounds.width

//屏幕高度
let kScreenH = UIScreen.main.bounds.height

//以iphone6的比例设置
let kRatioToIP6H = kScreenH/667
let kRatioToIP6W = kScreenW/375
let kNavHeight = 44
let kBar = 20
let kBarNav = kBar + kNavHeight

//MARK: -颜色方法
func RGBA (_ r:CGFloat,g:CGFloat,b:CGFloat,a:CGFloat)-> UIColor{
    return UIColor (red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
}

//MARK: 不透明颜色
func RGBColor (_ r:CGFloat,g:CGFloat,b:CGFloat)-> UIColor{
    return UIColor (red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1)
}
func HexColor(hex:String) ->UIColor {
    var cString = hex.trimmingCharacters(in:CharacterSet.whitespacesAndNewlines).uppercased()
    if (cString.hasPrefix("#")) {
        let index = cString.index(cString.startIndex, offsetBy:1)
        cString = String(cString[index..<cString.endIndex])
    }
    if (cString.count != 6) {
        return UIColor.red
    }
    let rIndex = cString.index(cString.startIndex, offsetBy: 2)
    let rString = String(cString[..<rIndex])
    let otherString = String(cString[rIndex...])
    let gIndex = otherString.index(otherString.startIndex, offsetBy: 2)
    let gString = String(cString[..<gIndex])
    let bIndex = cString.index(cString.endIndex, offsetBy: -2)
    let bString = String(cString[bIndex...])
    var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
    Scanner(string: rString).scanHexInt32(&r)
    Scanner(string: gString).scanHexInt32(&g)
    Scanner(string: bString).scanHexInt32(&b)
    return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(1))
}

// 常用颜色
let kAppBgColor = HexColor(hex: "#f3f6f9")
let kAppColor = HexColor(hex: "#487aed")
let kSepratorColor = RGBColor(219,g:222,b:230)
let kVCTitleColor = HexColor(hex:"2b2828")
let log = XCGLogger.default
let appDelegate = UIApplication.shared.delegate as! AppDelegate

//MARK: IOS 8以上
func IS_IOS8() -> Bool { return (UIDevice.current.systemVersion as NSString).doubleValue >= 8.0 }

func LocalString(_ str:String) ->String{
    return NSLocalizedString(str, comment: str)
}

// MARK:- 自定义打印方法
func Logger<T>(_ message : T, file : String = #file, funcName : String = #function, lineNum : Int = #line) {
    
    #if DEBUG
        
        let fileName = (file as NSString).lastPathComponent
        
        print("\(fileName):(\(lineNum))-\(message)")
        
    #endif
}


