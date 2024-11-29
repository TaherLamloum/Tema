//
//  PackagesTVCell.swift
//  Tema
//
//  Created by taher elnehr on 30/08/2024.
//

import UIKit

class PackagesTVCell: UITableViewCell {
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var adsNumberLbl: UILabel!
    @IBOutlet weak var daysNumberLbl: UILabel!
    @IBOutlet weak var roundView: UIView!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var currencyLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
 
}
extension PackagesTVCell{
    func initCell(cellData: packages){
        mainView.addRadius(radius: 5)
        mainView.backgroundColor = UIColor(named: cellData.color)
        roundView.addCircleRadius()
        nameLbl.customLabel(color: .CFFFFFF, size: .size_16, font: .Bold, text: cellData.neme)
        adsNumberLbl.customLabel(color: .CFFFFFF, size: .size_13, font: .Regular, text: cellData.adsNumber)
        daysNumberLbl.customLabel(color: .CFFFFFF, size: .size_13, font: .Regular, text: cellData.daysNumber)
        priceLbl.customLabel(color: .CFFFFFF, size: .size_18, font: .Bold, text: cellData.price, direction: .CENTER)
        currencyLbl.customLabel(color: .CFFFFFF, size: .size_14, font: .Regular, text: Lbls.CURRENCY.title, direction: .CENTER)
        
    }
}
