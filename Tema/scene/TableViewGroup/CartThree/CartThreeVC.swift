//
//  CartThreeVC.swift
//  Tema
//
//  Created by taher elnehr on 06/09/2024.
//

import UIKit

class CartThreeVC: UIViewController {

    @IBOutlet weak var cartThreeTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initUI()
    }
}
extension CartThreeVC{
    func initUI(){
        cartThreeTV.delegate = self
        cartThreeTV.dataSource = self
        cartThreeTV.register(UINib(nibName: "CartThreeTVCell", bundle: nil), forCellReuseIdentifier: "CartThreeTVCell")
    }
}
extension CartThreeVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 93*iPhoneXFactor
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = CartFourVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension CartThreeVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartThreeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartThreeTVCell", for: indexPath) as! CartThreeTVCell
        cell.cellIndex = indexPath.row
        cell.initCell(celldata: cartThreeList[indexPath.row])
        cell.delegate = self
        return cell
    }
}
extension CartThreeVC: CartThreeTVCellProtocol{
    func deleteBtnClicked(cellIndex: Int) {
        cartThreeList.remove(at: cellIndex)
        cartThreeTV.reloadData()
    }
    
    func plusBtnClicked(cellIndex: Int) {
        cartThreeList[cellIndex].counter += 1
        cartThreeTV.reloadData()
    }
    
    func minusBtnClicked(cellIndex: Int) {
        if cartThreeList[cellIndex].counter == 1{
            cartThreeList.remove(at: cellIndex)
        }else{
            cartThreeList[cellIndex].counter -= 1
        }
        cartThreeTV.reloadData()
    }
    
    
}
