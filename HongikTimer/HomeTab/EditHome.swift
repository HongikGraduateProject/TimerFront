//
//  EditHome.swift
//  HongikTimer
//
//  Created by JongHoon on 2022/05/10.
//

import UIKit

protocol EditHomeDelegate {
    func editHome(home: String)
    func editwallPaper(wallPaper: String)
}

class EditHome: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {

    let PICKER_VIEW_COLUMN = 2
    var imgPicker = [["Home_ex1", "Home_ex2", "Home_ex3"], ["w1", "w2", "w3", "w4", "w5", "w6"]]
    var delegateEdit: EditHomeDelegate?


    @IBOutlet var imgWallpaper: UIImageView!
    @IBOutlet var imgHome: UIImageView!
    @IBOutlet var pickerHome: UIPickerView! 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pickerHome.delegate = self
        
        imgWallpaper.image = UIImage(named: imgPicker[1][0])
        imgHome.image = UIImage(named: imgPicker[0][2])
        

    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imgPicker[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image: UIImage(named: imgPicker[component][row]))
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        return imageView
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            imgHome.image = UIImage(named: imgPicker[0][row])
        } else if component == 1 {
            imgWallpaper.image = UIImage(named: imgPicker[1][row])
        }
    }
    
}
