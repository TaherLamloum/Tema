//
//  CartVC.swift
//  Tema
//
//  Created by taher elnehr on 04/09/2024.
//

import UIKit

class CartVC: UIViewController {

    @IBOutlet weak var cartTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        
    }

}
extension CartVC{
    func initUI(){
        cartTV.dataSource = self
        cartTV.delegate = self
        cartTV.register(UINib(nibName: "CartTVCell", bundle: nil), forCellReuseIdentifier: "CartTVCell")
    }
}
extension CartVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 107*iPhoneXFactor
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = CartTwoVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension CartVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartTVCell", for: indexPath) as! CartTVCell
        cell.cellIndex = indexPath.row
        cell.initCell(cellData: cartList[indexPath.row])
        cell.delegate = self
        return cell
    }
}
extension CartVC: CartTVCellProtocol{
    func deleteBtnClicked(cellIndex: Int) {
        cartList.remove(at: cellIndex)
        cartTV.reloadData()
    }
    func plusBtnClicked(cellIndex: Int) {
        cartList[cellIndex].counter += 1
        cartTV.reloadData()
    }
    
    func minusBtnClicked(cellIndex: Int) {
        if cartList[cellIndex].counter == 1 {
            cartList.remove(at: cellIndex)
        }else{
            cartList[cellIndex].counter -= 1
        }
        cartTV.reloadData()
    }
}
