//
//  CartFourTVCell.swift
//  Tema
//
//  Created by taher elnehr on 11/09/2024.
//

import UIKit

protocol CartFourTVCellProtocol: NSObjectProtocol{
    func plusBtnClicked(cellIndex: Int)
    func minusBtnClicked(cellIndex: Int)
    func deleteBtnClicked(cellIndex: Int)
    
}
class CartFourTVCell: UITableViewCell {

    @IBOutlet weak var cartImage: UIImageView!
    @IBOutlet weak var cartNameLbl: UILabel!
    @IBOutlet weak var counterLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    
    weak var delegate: CartFourTVCellProtocol?
    var cellIndex = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBAction func plusBtnClicked(_ sender: Any) {
        delegate?.plusBtnClicked(cellIndex: cellIndex)
    }
    
    @IBAction func minusBtnClicked(_ sender: Any) {
        delegate?.minusBtnClicked(cellIndex: cellIndex)
    }
    
    @IBAction func deleteBtnClicked(_ sender: Any) {
        delegate?.deleteBtnClicked(cellIndex: cellIndex)
    }
}
extension CartFourTVCell{
    func initCell(cellData: CartFour){
        cartImage.image = UIImage(named: cellData.image)
        cartNameLbl.customLabel(color: .C525252, size: .size_14, font: .Regular, text: cellData.title, nOlines: 2)
        priceLbl.customLabel(color: .C070034, size: .size_14, font: .Bold, text: cellData.price)
        counterLbl.customLabel(color: .C070034, size: .size_12, font: .Regular, text: "\(cellData.counter)")
    }
}
