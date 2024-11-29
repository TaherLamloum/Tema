//
//  OccasionTVCell.swift
//  Tema
//
//  Created by taher elnehr on 30/08/2024.
//

import UIKit

class OccasionTVCell: UITableViewCell {

    @IBOutlet weak var occasionImg: UIImageView!
    @IBOutlet weak var occasionTitleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
extension OccasionTVCell{
    func initCell(cellData: Occasions){
        occasionImg.image = UIImage(named: cellData.image)
        occasionTitleLbl.customLabel(color: .C535353, size: .size_16, font: .Regular, text: cellData.title)
    }
}
