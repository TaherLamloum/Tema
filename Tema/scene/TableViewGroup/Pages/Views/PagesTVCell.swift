//
//  PagesTVCell.swift
//  Tema
//
//  Created by taher elnehr on 04/09/2024.
//

import UIKit

class PagesTVCell: UITableViewCell {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var titleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        mainView.addRadius(radius: 6)
        mainView.addBorder(color: .CE8E8E8, width: 1)
    }

}
extension PagesTVCell{
    func initCell(title: String){
        titleLbl.customLabel(color: .C2D2D2D, size: .size_16, font: .Medium, text: title)
    }
}
