//
//  TimeGraphCell.swift
//  HongikTimer
//
//  Created by JongHoon on 2022/05/10.
//

import UIKit

class TimeGraphCell: UITableViewCell {
    
    @IBOutlet var lblStudyTime: UILabel!
    @IBOutlet var pvTimeGraph: UIProgressView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        setTimeGraph()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
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



// https://velog.io/@sainkr/progress-view
//
