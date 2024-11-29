//
//  FishVC.swift
//  Tema
//
//  Created by taher elnehr on 28/08/2024.
//

import UIKit

class FishVC: UIViewController {

    @IBOutlet weak var fishTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        

    }

}
extension FishVC{
    func initUI(){
        fishTV.delegate = self
        fishTV.dataSource = self
        fishTV.register(UINib(nibName: "FishTVCell", bundle: nil), forCellReuseIdentifier: "FishTVCell")
    }
}
extension FishVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 113*iPhoneXFactor
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = FavouriteVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension FishVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fishList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FishTVCell", for: indexPath) as! FishTVCell
        cell.initCell(cellData: fishList[indexPath.row])
        return cell
    }
    
    
}
