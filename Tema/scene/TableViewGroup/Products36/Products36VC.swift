//
//  Products36VC.swift
//  Tema
//
//  Created by taher elnehr on 13/09/2024.
//

import UIKit

class Products36VC: UIViewController {

    @IBOutlet weak var products36TV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        // Do any additional setup after loading the view.
    }
}
extension Products36VC{
    func initUI(){
        products36TV.delegate = self
        products36TV.dataSource = self
        products36TV.register(UINib(nibName: "Products36TVCell", bundle: nil), forCellReuseIdentifier: "Products36TVCell")
    }
}
extension Products36VC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 244*iPhoneXFactor
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(Products35VC(), animated: true)
    }
}
extension Products36VC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products36List.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Products36TVCell", for: indexPath) as! Products36TVCell
        cell.initCell(cellData: products36List[indexPath.row])
        cell.delegate = self
        cell.cellindex = indexPath.row
        return cell
    }
}
extension Products36VC: Products36TVCellProtocol{
    func favouriteBtnClicked(cellIndex: Int) {
        products36List[cellIndex].isFavourite.toggle()
        products36TV.reloadData()
    }
}
