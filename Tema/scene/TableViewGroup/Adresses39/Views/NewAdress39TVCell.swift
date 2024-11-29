//
//  NewAdress39TVCell.swift
//  Tema
//
//  Created by taher elnehr on 23/10/2024.
//

import UIKit

class NewAdress39TVCell: UITableViewCell {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var newAdressLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        newAdressLbl.customLabel(color: .C070034, size: .size_12, font: .Regular, text: Lbls.NEW_ADRESS.title)
        mainView.addRadius(radius: 8)
        mainView.addBorder(color: .CEFEFEF, width: 1)
    }

}
