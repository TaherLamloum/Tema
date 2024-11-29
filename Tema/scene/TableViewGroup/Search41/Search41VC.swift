//
//  Search41VC.swift
//  Tema
//
//  Created by taher elnehr on 18/11/2024.
//

import UIKit

class Search41VC: UIViewController {
    
    @IBOutlet weak var searchTxtField: UITextField!
    @IBOutlet weak var searchTV: UITableView!
    
    var searchList: [search] = []
    var searchFilter: [search] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        
    }
}
extension Search41VC{
    func initUI() {
        initTV(tv: searchTV)
        searchList = [search(name: "Ahmed", image: "1"),
                      search(name: "Ali", image: "2"),
                      search(name: "Taher", image: "3"),
                      search(name: "Hassan", image: "4"),
                      search(name: "Mohamed", image: "5"),
                      search(name: "Hussein", image: "6"),
                      search(name: "Fahd", image: "7")]
        
        searchFilter = searchList
        searchTxtField.delegate = self
        
    }
    func initTV(tv: UITableView) {
        tv.delegate = self
        tv.dataSource = self
        tv.registerNib(cellClass: Search41TVCell.self)
    }
}
extension Search41VC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 77*iPhoneXFactor
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = More50VC()
        navigationController?.pushViewController(vc, animated: true)
        
    }
}
extension Search41VC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchFilter.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue() as Search41TVCell
        cell.initCell(cellData: searchFilter[indexPath.row])
        return cell
    }
    
    
}
extension Search41VC: UITextFieldDelegate{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let currentText = textField.text as NSString?{
            let newText = currentText.replacingCharacters(in: range, with: string)
            self.searchFilter = self.searchList.filter({ $0.name.lowercased().contains(newText.lowercased()) })
            self.searchTV.reloadData()
            if newText.isEmpty{
                self.searchFilter = self.searchList
                self.searchTV.reloadData()
            }
        }
        return true
    }
}
