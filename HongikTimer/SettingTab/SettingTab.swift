//
//  SettingTab.swift
//  HongikTimer
//
//  Created by JongHoon on 2022/03/12.
//


import UIKit

class SettingCell: UITableViewCell {
    
    @IBOutlet weak var settingNameLabel: UILabel!
    
    

}

struct SettingModel {
    var settingName = ""
}

class SettingTab: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var settingModels = [[SettingModel]]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingModels[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return settingModels.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath) as! SettingCell
        
        cell.settingNameLabel.text = settingModels[indexPath.section][indexPath.row].settingName
        
        return cell
    }
    
    
    
    @IBOutlet weak var settingTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "설정"
        self.navigationController?.navigationBar.prefersLargeTitles = false

        
        settingTableView.delegate = self
        settingTableView.dataSource = self
        settingTableView.backgroundColor = UIColor(white: 245/255, alpha: 1)

        
        settingModels.append([SettingModel(settingName: "닉네임 바꾸기"),
                             SettingModel(settingName: "목표 바꾸기")]
                            )
        
        settingModels.append([SettingModel(settingName: "알림설정")])
        
        settingModels.append([SettingModel(settingName: "비밀번호 바꾸기"),
                              SettingModel(settingName: "로그아웃"),
                              SettingModel(settingName: "탈퇴")]
                             )
    }
}
