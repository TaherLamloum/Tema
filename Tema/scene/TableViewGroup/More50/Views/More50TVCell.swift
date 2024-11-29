//
//  More50TVCell.swift
//  Tema
//
//  Created by taher elnehr on 30/11/2024.
//

import UIKit

class More50TVCell: UITableViewCell {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var morSwitch: UISwitch!
    @IBOutlet weak var arrowImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func initCell(cellData: More50){
        titleLbl.customLabel(color: .C292929, size: .size_14, font: (cellData.isArabic) ? .RE_Regular : .Regular, text: cellData.title)
    
            
        
        arrowImg.isHidden =  cellData.isSwitch ? true : false
        morSwitch.isHidden = cellData.isSwitch ? false : true
        
    }

}
