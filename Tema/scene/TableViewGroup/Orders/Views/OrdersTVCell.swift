//
//  OrdersTVCell.swift
//  Tema
//
//  Created by taher elnehr on 22/08/2024.
//

import UIKit

class OrdersTVCell: UITableViewCell {
    
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var orderNoLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var arrowImg: UIImageView!
    @IBOutlet weak var statusLbl: UILabel!
    @IBOutlet weak var mainView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        mainView.addRadius(radius: 10)
        mainView.addBorder(color: .CD9D9D9, width: 1)
    }
}
extension OrdersTVCell{
    func initCell(cellData: Order){
        arrowImg.transformAr()
        dateLbl.customLabel(color: .C989898, size: .size_14, font: .Regular, text: cellData.dat)
        orderNoLbl.customLabel(color: .C58595B, size: .size_14, font: .Regular, text: cellData.number)
        priceLbl.customLabel(color: .C0079FB, size: .size_14, font: .Regular, text: cellData.price)
        var color: Colors = .C000000
        switch cellData.status{
        case "Delivered": color = .C24955C
        case "Pending": color = .CDB0000
        default: color = .C0079FB
        }
        statusLbl.customLabel(color: color, size: .size_12, font: .Regular, text: cellData.status)
        arrowImg.tintColor = color.hex
        
    }
}
