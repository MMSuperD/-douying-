//
//  DY_BaseViewController.swift
//  DY
//
//  Created by sh-lx on 2019/2/22.
//  Copyright © 2019年 WangDan. All rights reserved.
//

import UIKit

class DY_BaseViewController: UIViewController{
    
    let dyScrollView = UIScrollView()
    let topAvplayerVC = DY_AVPlayerViewController()
    let midAvplayerVC = DY_AVPlayerViewController()
    let bottomAvplayerVC = DY_AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red;
        createScrollView()
        addChildView()
        
    }
    
    func createScrollView() -> () {
        view.addSubview(dyScrollView)
        dyScrollView.frame = SCREEN_BOUNDS
        dyScrollView.backgroundColor = UIColor.orange
        dyScrollView.contentSize = CGSize.init(width: SCREEN_WIDTH, height: SCREEN_HEIGHT * 3)
        dyScrollView.isPagingEnabled = true
        dyScrollView.contentOffset = CGPoint.init(x: 0, y: SCREEN_HEIGHT);
        dyScrollView.delegate = self
        
        if #available(iOS 11.0, *) {
            dyScrollView.contentInsetAdjustmentBehavior = .never
        }
    }
    
    func addChildView() -> () {
        topAvplayerVC.view.backgroundColor = UIColor.green
        topAvplayerVC.view.frame = CGRect.init(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT)
        midAvplayerVC.view.backgroundColor = UIColor.gray
        midAvplayerVC.view.frame = CGRect.init(x: 0, y: SCREEN_HEIGHT, width: SCREEN_WIDTH, height: SCREEN_HEIGHT)
        bottomAvplayerVC.view.backgroundColor = UIColor.orange
        bottomAvplayerVC.view.frame = CGRect.init(x: 0, y: SCREEN_HEIGHT * 2, width: SCREEN_WIDTH, height: SCREEN_HEIGHT)
        
        dyScrollView.addSubview(topAvplayerVC.view)
        dyScrollView.addSubview(midAvplayerVC.view)
        dyScrollView.addSubview(bottomAvplayerVC.view)
    }
}

extension DY_BaseViewController:UIScrollViewDelegate {
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        dyScrollView.contentOffset = CGPoint.init(x: 0, y: SCREEN_HEIGHT)
    }
    
}

