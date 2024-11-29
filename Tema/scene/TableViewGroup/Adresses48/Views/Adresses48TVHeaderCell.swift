//
//  Adresses48TVHeaderCell.swift
//  Tema
//
//  Created by taher elnehr on 13/11/2024.
//

import UIKit
protocol Adresses48TVHeaderCellProtocol: NSObjectProtocol{
    func adresses48TVHeaderCellProtocol(section: Int)
}

class Adresses48TVHeaderCell: UITableViewHeaderFooterView {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var arrowImgView: UIImageView!
    
    var isExpanded = false
    var section = 0
    weak var delgate: Adresses48TVHeaderCellProtocol?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    @IBAction func headerBtnClicked(_ sender: Any) {
        isExpanded.toggle()
        arrowImgView.transform = CGAffineTransform(rotationAngle: isExpanded ? (CGFloat.pi/2) : (CGFloat.pi*2))
        delgate?.adresses48TVHeaderCellProtocol(section: section)
    }
}
extension Adresses48TVHeaderCell{
    func initCell(cellData: City){
        
        titleLabel.customLabel(color: .C070034, size: .size_14, font: .Regular, text: cellData.title)
    }
}
