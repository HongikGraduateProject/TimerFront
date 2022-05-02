//
//  DetailProfileCell.swift
//  HongikTimer
//
//  Created by JongHoon on 2022/03/11.
//

import UIKit

class DetailProfileCell: UITableViewCell {
    
    
    @IBOutlet var homeImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        homeImageView.image = UIImage(named: "Home_ex1")
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
