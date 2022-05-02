//
//  ViewController.swift
//  HongikTimer
//
//  Created by JongHoon on 2022/03/11.
//

import UIKit

class HomeTab: UIViewController {
    
    
    
    @IBOutlet weak var HomeTabTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        HomeTabTableView.delegate = self
        HomeTabTableView.dataSource = self
        HomeTabTableView.backgroundColor = UIColor(white: 245/255, alpha: 1)
        
        HomeTabTableView.register(UINib(nibName: "SimpleProfileCell", bundle: nil), forCellReuseIdentifier: "SimpleProfileCell")
        HomeTabTableView.register(UINib(nibName: "DetailProfileCell", bundle: nil), forCellReuseIdentifier: "DetailProfileCell")
        
    }
    
    
}


extension HomeTab: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    


    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "SimpleProfileCell", for: indexPath) as! SimpleProfileCell
            
            
            return cell
            
        } else  {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "DetailProfileCell", for: indexPath) as! DetailProfileCell
            
            return cell
            
        }
    }
}







//// 첫 section
//if indexPath.section == 0 {
//
//    // UITableViewCell -> ProfileCell로 typecasting해줘야함
//    let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath) as! ProfileCell
//
//    cell.topTitle.text = settingModel[indexPath.section][indexPath.row].menuTitle
//
//    cell.profileImageView.image = UIImage(systemName: settingModel[indexPath.section][indexPath.row].leftImageName)
//    cell.bottomDescription.text = settingModel[indexPath.section][indexPath.row].subTitle
//
//    return cell
//}



