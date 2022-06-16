//
//  SetPurpose.swift
//  HongikTimer
//
//  Created by JongHoon on 2022/06/16.
//

import UIKit

protocol SettingPurposeDelegate {
    func settingPurpose(purpose: String)
}

class SetPurpose: UIViewController {

    
    @IBOutlet var txfPurpose: UITextField!
    var delegatePurpose: SettingPurposeDelegate?
    var textPurpose: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        txfPurpose.text = textPurpose
    }

    @IBAction func btnSetPurpose(_ sender: Any) {

        print(txfPurpose.text!)
        delegatePurpose?.settingPurpose(purpose: txfPurpose.text!)

//        self.dismiss(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

}



