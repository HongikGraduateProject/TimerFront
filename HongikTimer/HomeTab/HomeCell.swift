
import UIKit

protocol SettingPurposeDelegate {
    func settingPurpose(purpose: String)
}

class HomeCell: UITableViewCell, SettingPurposeDelegate {
    
    
    @IBOutlet var imageViewHome: UIImageView!
    @IBOutlet var imageViewWallPaper: UIImageView!
    @IBOutlet var btnSpeechBubble: UIButton!
    
    var purposeTxt = ""
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        btnSpeechBubble.layer.zPosition = 30
        imageViewHome.image = UIImage(named: "Home_ex1")
        settingWallpaper()
        btnSpeechBubble.setTitle("홍익대학교 22학번 합격!", for: .normal)
        btnSpeechBubble.setTitleColor(.black, for: .normal)
        btnSpeechBubble.titleLabel?.font = .systemFont(ofSize: 20)
    }

    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

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
    
    
    
    // 대리자 위임
//    @IBAction func btnPurpose(_ sender: Any) {
//        guard let settingPurpose = self.inputViewController?.storyboard?.instantiateViewController(withIdentifier: "SettingPurpose") as? SettingPurpose else { return }
//        self.inputViewController?.present(settingPurpose, animated: true)
//        settingPurpose.delegate = self
//    }
    
    
    
    func settingPurpose(purpose: String) {
        btnSpeechBubble.setTitle(purpose, for: .normal)

    }
}

