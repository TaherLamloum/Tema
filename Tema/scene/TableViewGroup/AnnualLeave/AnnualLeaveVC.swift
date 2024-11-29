//
//  AnnualLeaveVC.swift
//  Tema
//
//  Created by taher elnehr on 01/09/2024.
//

import UIKit

class AnnualLeaveVC: UIViewController {

    @IBOutlet weak var annualLeaveTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        
    }
}
extension AnnualLeaveVC{
    func initUI(){
        annualLeaveTV.delegate = self
        annualLeaveTV.dataSource = self
        annualLeaveTV.register(UINib(nibName: "AnnualLeaveTVCell", bundle: nil), forCellReuseIdentifier: "AnnualLeaveTVCell")
    }
}
extension AnnualLeaveVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80*iPhoneXFactor
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      let vc = AddressesVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension AnnualLeaveVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return leaveList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnnualLeaveTVCell", for: indexPath) as! AnnualLeaveTVCell
        cell.initCell(cellData: leaveList[indexPath.row])
        return cell
    }
    
    
}
