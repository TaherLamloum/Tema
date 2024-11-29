//
//  Products35VC.swift
//  Tema
//
//  Created by taher elnehr on 15/09/2024.
//

import UIKit

class Products35VC: UIViewController {

    @IBOutlet weak var product35TV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
}
extension Products35VC{
    func initUI(){
        product35TV.delegate = self
        product35TV.dataSource = self
        product35TV.register(UINib(nibName: "Products35TVCell", bundle: nil), forCellReuseIdentifier: "Products35TVCell")
    }
}
extension Products35VC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 201*iPhoneXFactor
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = Adresses39ViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension Products35VC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products36List.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Products35TVCell", for: indexPath) as! Products35TVCell
        cell.initCell(cellData: products36List[indexPath.row])
        cell.delegate = self
        cell.cellIndex = indexPath.row
        return cell
    }
}
extension Products35VC: Products35TVCellProtocol{
    func favouriteBtnClicked(cellIndex: Int) {
        products36List[cellIndex].isFavourite.toggle()
        product35TV.reloadData()
    }
    
    
}
