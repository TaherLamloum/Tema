//
//  FavouriteVC.swift
//  Tema
//
//  Created by taher elnehr on 28/08/2024.
//

import UIKit

class FavouriteVC: UIViewController {

    @IBOutlet weak var favouriteTV: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        // Do any additional setup after loading the view.
    }

}
extension FavouriteVC{
    func initUI(){
        favouriteTV.delegate = self
        favouriteTV.dataSource = self
        favouriteTV.register(UINib(nibName: "FavouriteTVCell", bundle: nil), forCellReuseIdentifier: "FavouriteTVCell")
    }
}
extension FavouriteVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 101*iPhoneXFactor
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       let vc = ShopVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension FavouriteVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavouriteTVCell", for: indexPath) as! FavouriteTVCell
        cell.initCell()
        return cell
    }
}
