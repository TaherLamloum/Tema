//
//  Adresses48TVCell.swift
//  Tema
//
//  Created by taher elnehr on 13/11/2024.
//

import UIKit

class Adresses48TVCell: UITableViewCell {

    @IBOutlet weak var titleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
}
extension Adresses48TVCell{
    func initCell(cellData: Area){
        titleLbl.customLabel(color: .C2C2C2C, size: .size_12, font: .Regular, text: cellData.name)
    }
}
