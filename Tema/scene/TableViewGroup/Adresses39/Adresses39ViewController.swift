//
//  Adresses39ViewController.swift
//  Tema
//
//  Created by taher elnehr on 22/10/2024.
//

import UIKit

class Adresses39ViewController: UIViewController {
    
    @IBOutlet weak var adressesTV: UITableView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var nextBtn: UIButton!
    
    var adressList: [Adress39] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        adressList = [Adress39(title: "Work adress", details: "Kuwait, Sharq, Jaber Mubarak St., Shrouq tower third floor…", isSelected: true),
                      Adress39(title: "Home adress", details: "Kuwait, Sharq, Jaber Mubarak St., Shrouq tower third floor…", isSelected: false),
                      Adress39(title: "Office adress", details: "Kuwait, Sharq, Jaber Mubarak St., Shrouq tower third floor…", isSelected: false),
                      Adress39(title: "Uncle adress", details: "Kuwait, Sharq, Jaber Mubarak St., Shrouq tower third floor…", isSelected: false),
        ]
    }
}
extension Adresses39ViewController{
    func initUI(){
        adressesTV.delegate = self
        adressesTV.dataSource = self
        adressesTV.register(UINib(nibName: "Adresses39TVCell", bundle: nil), forCellReuseIdentifier: "Adresses39TVCell")
        adressesTV.register(UINib(nibName: "CurrentLocation39TVCell", bundle: nil), forCellReuseIdentifier: "CurrentLocation39TVCell")
        adressesTV.register(UINib(nibName: "NewAdress39TVCell", bundle: nil), forCellReuseIdentifier: "NewAdress39TVCell")
        titleLbl.customLabel(color: .C070034, size: .size_14, font: .Regular, text: Lbls.TITLE_ADRESS.title)
        nextBtn.addCircleRadius()
        nextBtn.custom(titleColor: .C070034, font: .Regular, size: .size_12, title: .NEXT)
    }
}
extension Adresses39ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0, 1:
            return 48
        default:
            return 69
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let vc = Adresses48VC()
            navigationController?.pushViewController(vc, animated: true)
        case 1:
            print("go to new adress")
        default :
            for index in 0..<adressList.count{
                
                adressList[index].isSelected = false
            }
            adressList[indexPath.row - 2].isSelected = true
        }
        adressesTV.reloadData()
    }
}
extension Adresses39ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return adressList.count + 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CurrentLocation39TVCell", for: indexPath) as! CurrentLocation39TVCell
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "NewAdress39TVCell", for: indexPath) as! NewAdress39TVCell
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "Adresses39TVCell", for: indexPath) as! Adresses39TVCell
            cell.initCell(cellData: adressList[indexPath.row - 2])
            return cell
        }
    }
}
