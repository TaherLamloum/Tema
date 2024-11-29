//
//  DichVC.swift
//  Tema
//
//  Created by taher elnehr on 27/08/2024.
//

import UIKit

class DichVC: UIViewController {

    @IBOutlet weak var dichTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()

    }


}
extension DichVC{
    func initUI(){
        dichTV.delegate = self
        dichTV.dataSource = self
        dichTV.register(UINib(nibName: "DichTVCell", bundle: nil), forCellReuseIdentifier: "DichTVCell")
    }
}
extension DichVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 135*iPhoneXFactor
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = CategoriesVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension DichVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dichsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DichTVCell", for: indexPath) as! DichTVCell
        cell.initCell(cellData: dichsList[indexPath.row])
        return cell
    }
    
    
}
