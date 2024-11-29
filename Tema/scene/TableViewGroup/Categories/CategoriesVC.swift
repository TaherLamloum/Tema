//
//  CategoriesVC.swift
//  Tema
//
//  Created by taher elnehr on 27/08/2024.
//

import UIKit

class CategoriesVC: UIViewController {
    @IBOutlet weak var categoriesTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
initUI()
        // Do any additional setup after loading the view.
    }

    
}
extension CategoriesVC{
    func initUI(){
        categoriesTV.delegate = self
        categoriesTV.dataSource = self
        categoriesTV.register(UINib(nibName: "CategoriesTVCell", bundle: nil), forCellReuseIdentifier: "CategoriesTVCell")
    }
}
extension CategoriesVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 153*iPhoneXFactor
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = FishVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension CategoriesVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoriesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoriesTVCell", for: indexPath) as! CategoriesTVCell
        cell.initCell(cellData: categoriesList[indexPath.row])
        return cell
    }
    
    
}
