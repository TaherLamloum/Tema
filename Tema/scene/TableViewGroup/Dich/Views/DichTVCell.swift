//
//  DichTVCell.swift
//  Tema
//
//  Created by taher elnehr on 27/08/2024.
//

import UIKit

class DichTVCell: UITableViewCell {
    
    @IBOutlet weak var dichImg: UIImageView!
    @IBOutlet weak var dichLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        dichImg.addRadius(radius: 8)
        
    }
 
}
extension DichTVCell{
    func initCell(cellData: Dich){
        dichLbl.customLabel(color: .CFFFFFF, size: .size_22, font: .Bold, text: cellData.dichName, direction: .CENTER)
        dichImg.image = UIImage(named: cellData.dichImg)
        
        
    }
}
