//
//  CategoriesTVCell.swift
//  Tema
//
//  Created by taher elnehr on 27/08/2024.
//

import UIKit

class CategoriesTVCell: UITableViewCell {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var categoryImg: UIImageView!
    @IBOutlet weak var categoryTitleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        mainView.addRadius(radius: 8)
        
    }

}
extension CategoriesTVCell{
    func initCell(cellData: Category){
        categoryImg.image = UIImage(named: cellData.categoryImg)
        categoryTitleLbl.customLabel(color: .CFFFFFF, size: .size_18, font: .Bold, text: cellData.categoryName, direction: .CENTER)
    }
}
