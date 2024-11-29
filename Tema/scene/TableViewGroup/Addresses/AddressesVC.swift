//
//  AddressesVC.swift
//  Tema
//
//  Created by taher elnehr on 04/09/2024.
//

import UIKit

class AddressesVC: UIViewController {

    @IBOutlet weak var addressesTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        
    }
}
extension AddressesVC{
    func initUI(){
        addressesTV.dataSource = self
        addressesTV.delegate = self
        addressesTV.register(UINib(nibName: "AddressesTVCell", bundle: nil), forCellReuseIdentifier: "AddressesTVCell")
    }
}
extension AddressesVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72*iPhoneXFactor
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = PagesVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension AddressesVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return addressList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddressesTVCell", for: indexPath) as! AddressesTVCell
        cell.initCell(cellData: addressList[indexPath.row])
        return cell
    }
    
    
}
