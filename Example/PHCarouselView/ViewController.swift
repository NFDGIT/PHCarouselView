//
//  ViewController.swift
//  PHCarouselView
//
//  Created by NFDGIT on 04/15/2021.
//  Copyright (c) 2021 NFDGIT. All rights reserved.
//

import UIKit
import PHCarouselView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let carousel : PHCarouselView = PHCarouselView.init()
        self.view.addSubview(carousel)
        carousel.snp.makeConstraints { (make) in
            make.top.equalTo(50)
            make.left.right.equalToSuperview()
            make.height.equalTo(300)
        }
        carousel.numberCell = {
            return 5
        }
        carousel.cellForIndex = {(page)in
            let btn : UIButton = UIButton.init()
            btn.setTitle("penghui", for: .normal)
            btn.backgroundColor = UIColor.red
           return btn
        }
        carousel.reload()
        carousel.startAutoScroll()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

