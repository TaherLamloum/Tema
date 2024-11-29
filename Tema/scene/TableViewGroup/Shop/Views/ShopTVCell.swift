//
//  ShopTVCell.swift
//  Tema
//
//  Created by taher elnehr on 30/08/2024.
//

import UIKit

class ShopTVCell: UITableViewCell {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var shopImg: UIImageView!
    @IBOutlet weak var shadowImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        mainView.addRadius(radius: 5)
    }
}
extension ShopTVCell{
    func initCell(cellData: Shop){
        shopImg.image = UIImage(named: cellData.shopImage)
        titleLbl.customLabel(color: .CFFFFFF, size: .size_22, font: .Bold, text: cellData.shopTitle, direction: .CENTER)
    }
}
