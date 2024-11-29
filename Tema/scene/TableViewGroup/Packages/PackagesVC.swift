//
//  PackagesVC.swift
//  Tema
//
//  Created by taher elnehr on 30/08/2024.
//

import UIKit

class PackagesVC: UIViewController {

    @IBOutlet weak var packagesTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initUI()
    }

}
extension PackagesVC{
    func initUI(){
        packagesTV.delegate = self
        packagesTV.dataSource = self
        packagesTV.register(UINib(nibName: "PackagesTVCell", bundle: nil), forCellReuseIdentifier: "PackagesTVCell")
    }
}
extension PackagesVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105*iPhoneXFactor
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = AnnualLeaveVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension PackagesVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return packagesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PackagesTVCell", for: indexPath) as! PackagesTVCell
        cell.initCell(cellData: packagesList[indexPath.row])
        return cell
    }
    
    
}
