//
//  Adresses39TVCell.swift
//  Tema
//
//  Created by taher elnehr on 22/10/2024.
//

import UIKit

class Adresses39TVCell: UITableViewCell {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var detailsLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        mainView.addRadius(radius: 8)
        
        
    }
    func initCell(cellData: Adress39){
        titleLbl.customLabel(color: cellData.isSelected ? .CFFAE00 : .C525252, size: .size_12, font: .Bold, text: cellData.title)
        detailsLbl.customLabel(color: cellData.isSelected ? .CFFAE00 : .C525252, size: .size_12, font: .Regular, text: cellData.details)
        mainView.addBorder(color: cellData.isSelected ? .CFFAE00 : .CEFEFEF, width: 1)
    }
}
