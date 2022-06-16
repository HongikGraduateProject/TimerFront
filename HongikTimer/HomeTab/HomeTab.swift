//
//  ViewController.swift
//  HongikTimer
//
//  Created by JongHoon on 2022/03/11.
//

import UIKit

class HomeTab: UIViewController, SettingPurposeDelegate, EditHomeDelegate {

    

    

    
    @IBOutlet var btnSpeechBubble: UIButton!
    @IBOutlet var pvTimeGraph: UIProgressView!
    @IBOutlet var imageViewWallPaper: UIImageView!
    var purpose1: String = "홍익대학교 23학번!"
    var home1: String = ""
    var wallPaper1: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTimeGraph()
        settingWallpaper()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setSpeechBubble()
    }
    
    func setSpeechBubble() {
        btnSpeechBubble.layer.zPosition = 300
        btnSpeechBubble.setTitle(purpose1, for: .normal)
        btnSpeechBubble.setTitleColor(.black, for: .normal)
        btnSpeechBubble.titleLabel?.font = .systemFont(ofSize: 15)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let setPurpose = segue.destination as! SetPurpose
//        let editHome = segue.destination as! EditHome
//        setPurpose.delegatePurpose = self
//        editHome.delegateEdit = self
//    }
    
    @IBAction func btnSetPurpose(_ sender: Any) {

        guard let setPurpose = self
            .storyboard?
            .instantiateViewController(withIdentifier: "SetPurpose") as? SetPurpose else { return }
        self.show(setPurpose, sender: setPurpose)
//        self.present(setPurpose, animated: true)
        setPurpose.delegatePurpose = self
    }
    
    
    
    
    
    func editHome(home: String) {
        home1 = home
    }
    
    func editwallPaper(wallPaper: String) {
        wallPaper1 = wallPaper
    }
    
    func settingPurpose(purpose: String) {
        purpose1 = purpose
    }
    
    

    
    // 시간에 따라 배경 변경
    func settingWallpaper() {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH"
        let currentHour = formatter.string(from: Date())
        if (17 <= Int(currentHour)! && Int(currentHour)! <= 23) || ( 0 <= Int(currentHour)! && Int(currentHour)! <= 6) {
            imageViewWallPaper.image = UIImage(named: "w1")
        } else {
            imageViewWallPaper.image = UIImage(named: "w2")
        }
    }
    
    func editHomeImage() {
        
    }
    
    func setTimeGraph() {
        pvTimeGraph.progressViewStyle = .default
        pvTimeGraph.progressTintColor = UIColor(rgb: 0x75b53c)
        pvTimeGraph.clipsToBounds = true
        pvTimeGraph.layer.cornerRadius = 5
        pvTimeGraph.clipsToBounds = true
        pvTimeGraph.layer.sublayers![1].cornerRadius = 5
        pvTimeGraph.subviews[1].clipsToBounds = true
    }
    
}


extension UIColor {
    convenience init(red: Int, green: Int, blue: Int, a: Int = 0xFF) {
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: CGFloat(a) / 255.0
        )
    }
    convenience init(rgb: Int) {
           self.init(
               red: (rgb >> 16) & 0xFF,
               green: (rgb >> 8) & 0xFF,
               blue: rgb & 0xFF
           )
       }
    // let's suppose alpha is the first component (ARGB)
    convenience init(argb: Int) {
        self.init(
            red: (argb >> 16) & 0xFF,
            green: (argb >> 8) & 0xFF,
            blue: argb & 0xFF,
            a: (argb >> 24) & 0xFF
        )
    }
}

