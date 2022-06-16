
import UIKit


class HomeCell: UITableViewCell {
    
    
    @IBOutlet var imageViewHome: UIImageView!
    @IBOutlet var imageViewWallPaper: UIImageView!

    
    var purposeTxt = ""
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imageViewHome.image = UIImage(named: "Home_ex1")
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    
    
    
    // 대리자 위임
//    @IBAction func btnPurpose(_ sender: Any) {
//        guard let settingPurpose = self.inputViewController?.storyboard?.instantiateViewController(withIdentifier: "SettingPurpose") as? SettingPurpose else { return }
//        self.inputViewController?.present(settingPurpose, animated: true)
//        settingPurpose.delegate = self
//    }
    
    
}

