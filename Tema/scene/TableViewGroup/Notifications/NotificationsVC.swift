//
//  NotificationsVC.swift
//  Tema
//
//  Created by taher elnehr on 13/09/2024.
//

import UIKit

class NotificationsVC: UIViewController {

    @IBOutlet weak var notificationTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        
    }
}
extension NotificationsVC{
    func initUI(){
        notificationTV.delegate = self
        notificationTV.dataSource = self
        notificationTV.register(UINib(nibName: "NotificationsTVCell", bundle: nil), forCellReuseIdentifier: "NotificationsTVCell")
        notificationTV.estimatedRowHeight = 100
    }
}
extension NotificationsVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(Products36VC(), animated: true)
    }
}
extension NotificationsVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notificationList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationsTVCell", for: indexPath) as! NotificationsTVCell
        cell.initCell(celldata: notificationList[indexPath.row])
        return cell
    }
    
    
}
