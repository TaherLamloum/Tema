//
//  Adresses48VC.swift
//  Tema
//
//  Created by taher elnehr on 13/11/2024.
//

import UIKit

class Adresses48VC: UIViewController {
 
    

    @IBOutlet weak var adress48TV: UITableView!
    
    var cityList: [City] = []
    var areaList: [Area] = []
    var tvCellHeaderHeight: CGFloat = 45*iPhoneXFactor
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initUI()
    }

}
extension Adresses48VC{
    func initUI(){
        areaList = [Area(id: 1, name: "Nasr city", isSelected: false),
                    Area(id: 2, name: "Mohandseen", isSelected: false),
                    Area(id: 3, name: "Zamalek", isSelected: false),
                    Area(id: 4, name: "Abbasiah", isSelected: false)]
        
        cityList = [City(id: 1, title: "Cairo", items: areaList, isExpanded: false),
                    City(id: 2, title: "Alex", items: areaList, isExpanded: false),
                    City(id: 3, title: "Behirah", items: areaList, isExpanded: false),
                    City(id: 4, title: "Geza", items: areaList, isExpanded: false)]
        initTV(tv: adress48TV)
        
    }
    func initTV(tv: UITableView){
        tv.delegate = self
        tv.dataSource = self
        tv.registerNib(cellClass: Adresses48TVHeaderCell.self)
        tv.registerNib(cellClass: Adresses48TVCell.self)
        tv.estimatedRowHeight = 100
        tv.sectionHeaderTopPadding = 0
    }
    
}
extension Adresses48VC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return tvCellHeaderHeight
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeue() as Adresses48TVHeaderCell
        cell.initCell(cellData: cityList[section])
        cell.section = section
        cell.delgate = self
        cell.isExpanded = cityList[section].isExpanded
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = Search41VC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension Adresses48VC: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return cityList.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cityList[section].isExpanded ? cityList[section].items.count : 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue() as Adresses48TVCell
        cell.initCell(cellData: cityList[indexPath.section].items[indexPath.row])
        return cell
    }
    
    
}
extension Adresses48VC: Adresses48TVHeaderCellProtocol{
    func adresses48TVHeaderCellProtocol(section: Int) {
        if cityList[section].isExpanded{
            cityList[section].isExpanded = false
        }else{
            cityList[section].isExpanded = true
        }
        animateSection(section: section)
    }
}
extension Adresses48VC{
    func animateSection(section: Int){
        let indexPath = (0..<cityList[section].items.count).map { IndexPath(row: $0, section: section)}
        adress48TV.beginUpdates()
        if cityList[section].isExpanded{
            adress48TV.insertRows(at: indexPath, with: .fade)
        }else{
            adress48TV.deleteRows(at: indexPath, with: .fade)
        }
        
        adress48TV.endUpdates()
    }
}
