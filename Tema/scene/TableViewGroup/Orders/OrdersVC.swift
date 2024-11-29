//
//  OrdersVC.swift
//  Tema
//
//  Created by taher elnehr on 22/08/2024.
//

import UIKit

class OrdersVC: UIViewController {
    
    @IBOutlet weak var ordersTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       initUI()
        // Do any additional setup after loading the view.
    }

}
extension OrdersVC{
    func initUI(){
        ordersTV.delegate = self
        ordersTV.dataSource = self
        ordersTV.register(UINib(nibName: "OrdersTVCell", bundle: nil), forCellReuseIdentifier: "OrdersTVCell")
        
    }
}
extension OrdersVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 104*iPhoneXFactor
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DichVC()
        navigationController?.pushViewController(vc, animated: true)
        
    }
}
extension OrdersVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ordersList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrdersTVCell", for: indexPath) as! OrdersTVCell
        cell.initCell(cellData: ordersList[indexPath.row])
  return cell
    }
    
    
}
