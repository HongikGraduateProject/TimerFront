//
//  TimerTab.swift
//  HongikTimer
//
//  Created by JongHoon on 2022/03/12.
//

import UIKit

class TimerTab: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        makeSettingButton()
        
    }
    
    func makeSettingButton() {
        
        let gearImage = UIImage(systemName: "gearshape")
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: gearImage,
                                                                 style: .plain,
                                                                 target: self,
                                                                 action: nil)
        self.navigationItem.rightBarButtonItem?.tintColor = .black
    }
}
