//
//  CartTVCell.swift
//  Tema
//
//  Created by taher elnehr on 04/09/2024.
//

import UIKit

protocol CartTVCellProtocol: NSObjectProtocol{
    func deleteBtnClicked(cellIndex: Int)
    func plusBtnClicked(cellIndex: Int)
    func minusBtnClicked(cellIndex: Int)
}
class CartTVCell: UITableViewCell {

    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var currencyLbl: UILabel!
    @IBOutlet weak var counterLbl: UILabel!
    
    var cellIndex = 0
    weak var delegate: CartTVCellProtocol?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        currencyLbl.customLabel(color: .C231F1F, size: .size_14, font: .Regular, text: "KWD")
    }

    @IBAction func deleteBtnClicked(_ sender: Any) {
        delegate?.deleteBtnClicked(cellIndex: cellIndex)
    }
    @IBAction func plusBtnClicked(_ sender: Any) {
        delegate?.plusBtnClicked(cellIndex: cellIndex)
    }
    @IBAction func minusBtnClicked(_ sender: Any) {
        delegate?.minusBtnClicked(cellIndex: cellIndex)
    }
}
extension CartTVCell{
    func initCell(cellData: Cart){
        mainImg.image = UIImage(named: cellData.cartImg)
        titleLbl.customLabel(color: .C231F1F, size: .size_16, font: .Regular, text: cellData.title)
        priceLbl.customLabel(color: .C231F1F, size: .size_16, font: .Bold,text: cellData.price)
        counterLbl.customLabel(color: .C707070, size: .size_14, font: .Regular, text: "\(cellData.counter)")
        
    }
}
