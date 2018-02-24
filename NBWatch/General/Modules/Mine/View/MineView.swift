//
//  MineView.swift
//  NBWatch
//
//  Created by admin on 2018/2/23.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

enum CellIndex:Int{
    case Msg
    case Cache
    case Reset
    case Help
    case Current
}

typealias CellBlock = (CellIndex)->()

class MineView: BaseView {

 
    
    var cellBlock : CellBlock?
    
    let dataSource = ["消息通知开关","清除缓存","重置密码","帮助与反馈","当前账号"]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let tableView = UITableView.init(frame: self.bounds, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 100
        tableView.tableFooterView = UIView()
        self.addSubview(tableView)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MineView:UITableViewDelegate,UITableViewDataSource{
 
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: "cell")
        }
        
        cell?.textLabel?.text = dataSource[indexPath.row]
        return cell!
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        cellBlock?(CellIndex(rawValue: indexPath.row as CellIndex.RawValue)!)
        
    }
}
