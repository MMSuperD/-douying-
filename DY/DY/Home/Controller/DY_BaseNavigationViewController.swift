//
//  DY_BaseNavigationViewController.swift
//  DY
//
//  Created by sh-lx on 2019/3/7.
//  Copyright © 2019年 WangDan. All rights reserved.
//

import UIKit

class DY_BaseNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.setNavigationBarHidden(true, animated: animated)
        super.viewWillAppear(animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        self.setNavigationBarHidden(false, animated: animated)
        super.viewWillDisappear(animated)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
