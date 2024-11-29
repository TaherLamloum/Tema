//
//  ShopVC.swift
//  Tema
//
//  Created by taher elnehr on 30/08/2024.
//

import UIKit

class ShopVC: UIViewController {

    @IBOutlet weak var shopTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
}
extension ShopVC{
    func initUI(){
        shopTV.delegate = self
        shopTV.dataSource = self
        shopTV.register(UINib(nibName: "ShopTVCell", bundle: nil), forCellReuseIdentifier: "ShopTVCell")
    }
}
extension ShopVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125*iPhoneXFactor
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = OccasionVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension ShopVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shopList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShopTVCell", for: indexPath) as! ShopTVCell
        cell.initCell(cellData: shopList[indexPath.row])
        return cell
    }
    
    
}
