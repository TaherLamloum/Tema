//
//  AddressesTVCell.swift
//  Tema
//
//  Created by taher elnehr on 04/09/2024.
//

import UIKit

class AddressesTVCell: UITableViewCell {

    @IBOutlet weak var mainAddressLbl: UILabel!
    @IBOutlet weak var addressDetailsLbL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
extension AddressesTVCell{
    func initCell(cellData: Addresses){
        mainAddressLbl.customLabel(color: .C212121, size: .size_14, font: .Bold, text: cellData.address, direction: .LEFT)
        addressDetailsLbL.customLabel(color: .C505050, size: .size_14, font: .Regular, text: cellData.addressDetails, direction: .LEFT)
    }
}
