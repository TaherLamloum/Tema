//
//  AnnualLeaveTVCell.swift
//  Tema
//
//  Created by taher elnehr on 01/09/2024.
//

import UIKit

class AnnualLeaveTVCell: UITableViewCell {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var stateLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        mainView.addRadius(radius: 6)
        mainView.addBorder(color: .CE5E5E5, width: 1)
    }
}
extension AnnualLeaveTVCell{
    func initCell(cellData: Leave){
        dateLbl.customLabel(color: .C656565, size: .size_12, font: .Regular, text: cellData.date, direction: .LEFT)
        nameLbl.customLabel(color: .C000000, size: .size_14, font: .Medium, text: cellData.name, direction: .LEFT)
        var color: Colors = .C000000
        switch cellData.status{
        case "Waiting": color = .C000000
        case "Accepted": color = .C26A800
        default: color = .CFF0909
        }
        stateLbl.customLabel(color: color, size: .size_12, font: .Regular, text: cellData.status)
    }
}
