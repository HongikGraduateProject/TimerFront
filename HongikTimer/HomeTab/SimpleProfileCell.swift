//
//  SimpleProfileCell.swift
//  HongikTimer
//
//  Created by JongHoon on 2022/03/11.
//

import UIKit

class SimpleProfileCell: UITableViewCell {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nickNameLabel: UILabel!
    @IBOutlet weak var purposeLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        profileImageView.layer.cornerRadius = CGFloat(profileHeight / 2)
//        profileImageView.image = UIImage(named: "profile1")
        
//        nickNameLabel.textColor = .black
//        nickNameLabel.font = UIFont.systemFont(ofSize: 20)
//        nickNameLabel.text = "홍익인간"
        
        purposeLabel.textColor = .black
        purposeLabel.font = UIFont.systemFont(ofSize: 16)
        purposeLabel.text = ""
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
