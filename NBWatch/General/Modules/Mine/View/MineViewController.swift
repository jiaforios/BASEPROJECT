//
//  MineViewController.swift
//  NBWatch
//
//  Created by admin on 2018/2/23.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class MineViewController: BaseViewController{

    var presenter :MinePresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        presenter = MinePresenter.init(view: self)
        let mineView = MineView()
        
        mineView.cellBlock = { (index)->() in
            self.presenter?.cellAction(index)
        }
        
        view.addSubview(mineView)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
