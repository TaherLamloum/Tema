//
//  OccasionVC.swift
//  Tema
//
//  Created by taher elnehr on 30/08/2024.
//

import UIKit

class OccasionVC: UIViewController {

    @IBOutlet weak var occasionTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initUI()
    }

}
extension OccasionVC{
    func initUI(){
        occasionTV.delegate = self
        occasionTV.dataSource = self
        occasionTV.register(UINib(nibName: "OccasionTVCell", bundle: nil), forCellReuseIdentifier: "OccasionTVCell")
    }
}
extension OccasionVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 68*iPhoneXFactor
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = PackagesVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension OccasionVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return occassionsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OccasionTVCell", for: indexPath) as! OccasionTVCell
        cell.initCell(cellData: occassionsList[indexPath.row])
        return cell
    }
    
    
}
