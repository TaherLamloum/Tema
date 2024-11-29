//
//  More50VC.swift
//  Tema
//
//  Created by taher elnehr on 30/11/2024.
//

import UIKit

class More50VC: UIViewController {

    @IBOutlet weak var moreTV: UITableView!
    @IBOutlet weak var logoutBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initUI()
    }

}
extension More50VC{
    func initUI(){
        initTV(tv: moreTV)
        logoutBtn.custom(titleColor: .CF93C3C, title: .LOGOUT)
    }
    func initTV(tv: UITableView){
        tv.delegate = self
        tv.dataSource = self
        tv.registerNib(cellClass: More50TVCell.self)
        
    }
}
extension More50VC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60*iPhoneXFactor
    }
}
extension More50VC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return more50List.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue() as More50TVCell
        cell.initCell(cellData: more50List[indexPath.row])
        return cell
        
    }
    
    
}
