//
//  GroupTab.swift
//  HongikTimer
//
//  Created by JongHoon on 2022/03/12.
//

import UIKit

class GroupCell: UITableViewCell {
    
    @IBOutlet weak var cellPhoto: UIImageView!
    @IBOutlet weak var cellGroupName: UILabel!
    
    
}

class GroupTab: UIViewController {
 
    
    
    @IBOutlet weak var groupTabTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        groupTabTableView.delegate = self
        groupTabTableView.dataSource = self
        groupTabTableView.backgroundColor = UIColor(white: 245/255, alpha: 1)
        
        makeGroupButton()
    }
    
    func makeGroupButton() {
        
        let add = UIImage(systemName: "plus")
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: add,
                                                                 style: .plain,
                                                                 target: self,
                                                                 action: nil)
        self.navigationItem.rightBarButtonItem?.tintColor = .black
        self.navigationController?.navigationBar.tintColor = .black
        


                
    }
    
    
}

extension GroupTab: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return 5
     }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        if indexPath.section == 0 && indexPath.row == 0 {
            if let roomVC = UIStoryboard(name: "GroupRoomVC", bundle: nil).instantiateViewController(withIdentifier: "GroupRoomVC") as? GroupRoomVC {
               self.navigationController?.pushViewController(roomVC, animated: true)
            }
        }
    }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
         let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as! GroupCell
         
         return cell
     }
    
}
