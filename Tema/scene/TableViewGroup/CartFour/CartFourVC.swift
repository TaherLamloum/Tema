//
//  CartFourVC.swift
//  Tema
//
//  Created by taher elnehr on 11/09/2024.
//

import UIKit

class CartFourVC: UIViewController {

    @IBOutlet weak var cartFourTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        // Do any additional setup after loading the view.
    }

}
extension CartFourVC{
    func initUI(){
        cartFourTV.delegate = self
        cartFourTV.dataSource = self
        cartFourTV.register(UINib(nibName: "CartFourTVCell", bundle: nil), forCellReuseIdentifier: "CartFourTVCell")
    }
}
extension CartFourVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100*iPhoneXFactor
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = NotificationsVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension CartFourVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartFourList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartFourTVCell", for: indexPath) as! CartFourTVCell
        cell.initCell(cellData: cartFourList[indexPath.row])
        cell.delegate = self
        cell.cellIndex = indexPath.row
        return cell
    }
}
extension CartFourVC: CartFourTVCellProtocol{
    func plusBtnClicked(cellIndex: Int) {
        cartFourList[cellIndex].counter += 1
        cartFourTV.reloadData()
    }
    func minusBtnClicked(cellIndex: Int) {
        if cartFourList[cellIndex].counter == 1{
            cartFourList.remove(at: cellIndex)
        }else{
            cartFourList[cellIndex].counter -= 1
        }
        cartFourTV.reloadData()
    }
    
    func deleteBtnClicked(cellIndex: Int) {
        cartFourList.remove(at: cellIndex)
        cartFourTV.reloadData()
    }
}
