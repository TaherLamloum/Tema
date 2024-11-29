//
//  FavouriteTVCell.swift
//  Tema
//
//  Created by taher elnehr on 28/08/2024.
//

import UIKit

class FavouriteTVCell: UITableViewCell {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var productNameLbl: UILabel!
    @IBOutlet weak var productPriceLbl: UILabel!
    @IBOutlet weak var arrowImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
}
extension FavouriteTVCell{
    func initCell(){
        arrowImg.transformEn()
        mainView.addRadius(radius: 10)
        productNameLbl.customLabel(color: .C525252, size: .size_16, font: .Bold, text: "اسم المنتج")
        productPriceLbl.customLabel(color: .CE2283D, size: .size_16, font: .Bold, text: "5.750 DK")
    }
}
