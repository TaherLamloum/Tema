//
//  NotificationsTVCell.swift
//  Tema
//
//  Created by taher elnehr on 13/09/2024.
//

import UIKit

class NotificationsTVCell: UITableViewCell {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        mainView.addRadius(radius: 12)
        mainView.addBorder(color: .CE5E5E5, width: 1)
    }
}
extension NotificationsTVCell{
    func initCell(celldata: Notifications){
        dateLbl.customLabel(color: .C989898, size: .size_14, font: .Regular, text: celldata.date)
        descriptionLbl.customLabel(color: .C666666, size: .size_14, font: .Regular, text:  celldata.message)
//        mainView.backgroundColor = UIColor(named: celldata.isSeen ? Colors.CFFFFFF.rawValue : Colors.CF6F6F6.rawValue)
        mainView.backgroundColor = celldata.isSeen ? Colors.CFFFFFF.hex : Colors.CF6F6F6.hex
    }
}
