//
//  PagesVC.swift
//  Tema
//
//  Created by taher elnehr on 04/09/2024.
//

import UIKit

class PagesVC: UIViewController {

    @IBOutlet weak var pagesTV: UITableView!
    
    let pagesList:[String] = ["All", "News", "Sports", "Social", "Economic", "News", "Sports"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        // Do any additional setup after loading the view.
    }
}
extension PagesVC{
    func initUI(){
        pagesTV.delegate = self
        pagesTV.dataSource = self
        pagesTV.register(UINib(nibName: "PagesTVCell", bundle: nil), forCellReuseIdentifier: "PagesTVCell")
    }
}
extension PagesVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 67*iPhoneXFactor
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = CartVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension PagesVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pagesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PagesTVCell", for: indexPath) as! PagesTVCell
        cell.initCell(title: pagesList[indexPath.row])
        return cell
    }
    
    
}
