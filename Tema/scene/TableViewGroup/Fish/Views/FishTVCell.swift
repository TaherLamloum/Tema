//
//  FishTVCell.swift
//  Tema
//
//  Created by taher elnehr on 28/08/2024.
//

import UIKit

class FishTVCell: UITableViewCell {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var fishImg: UIImageView!
    @IBOutlet weak var fishTitleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        mainView.addRadius(radius: 8)
    }
}
extension FishTVCell{
    func initCell(cellData: Fish){
        fishImg.image = UIImage(named: cellData.fishImage)
        fishTitleLbl.customLabel(color: .CFFFFFF, size: .size_16, font: .Bold, text: cellData.fishTitle, direction: .CENTER)
        
    }
}
