//
//  CartTwoVC.swift
//  Tema
//
//  Created by taher elnehr on 05/09/2024.
//

import UIKit

class CartTwoVC: UIViewController {

    @IBOutlet weak var cartTwoTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        
    }

}
extension CartTwoVC{
    func initUI(){
        cartTwoTV.delegate = self
        cartTwoTV.dataSource = self
        cartTwoTV.register(UINib(nibName: "CartTwoTVCell", bundle: nil), forCellReuseIdentifier: "CartTwoTVCell")
    }
}
extension CartTwoVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        95*iPhoneXFactor
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = CartThreeVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension CartTwoVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartTwoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartTwoTVCell", for: indexPath) as! CartTwoTVCell
        cell.cellIndex = indexPath.row
        cell.initCell(celldata: cartTwoList[indexPath.row])
        cell.delegate = self
        return cell
    }
}
extension CartTwoVC: CartTwoTVCellProtocol{
    func cancelBtnClicked(cellIndex: Int) {
        cartTwoList.remove(at: cellIndex)
        cartTwoTV.reloadData()
    }
    
    func plusBtnClicked(cellIndex: Int) {
        cartTwoList[cellIndex].counter += 1
        cartTwoTV.reloadData()
    }
    
    func minusBtnClicked(cellIndex: Int) {
        if cartTwoList[cellIndex].counter == 1{
            cartTwoList.remove(at: cellIndex)
        }else{
            cartTwoList[cellIndex].counter -= 1
        }
        cartTwoTV.reloadData()
    }
    
    
}
