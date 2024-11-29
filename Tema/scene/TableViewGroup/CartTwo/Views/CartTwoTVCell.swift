//
//  CartTwoTVCell.swift
//  Tema
//
//  Created by taher elnehr on 05/09/2024.
//

import UIKit

protocol CartTwoTVCellProtocol: NSObjectProtocol{
    func cancelBtnClicked(cellIndex: Int)
    func plusBtnClicked(cellIndex: Int)
    func minusBtnClicked(cellIndex: Int)
}
class CartTwoTVCell: UITableViewCell {

    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var currencyLbl: UILabel!
    @IBOutlet weak var counterLbl: UILabel!
    
    var cellIndex = 0
    weak var delegate: CartTwoTVCellProtocol?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        currencyLbl.customLabel(color: .CFA7916, size: .size_14, font: .Regular, text: "KWD")
    }
    
    @IBAction func cancelBtnClicked(_ sender: Any) {
        delegate?.cancelBtnClicked(cellIndex: cellIndex)
    }
    @IBAction func plusBtnClicked(_ sender: Any) {
        delegate?.plusBtnClicked(cellIndex: cellIndex)
    }
    @IBAction func minusBtnClicked(_ sender: Any) {
        delegate?.minusBtnClicked(cellIndex: cellIndex)
    }
}
extension CartTwoTVCell{
    func initCell(celldata: CartTwo){
        mainImg.image = UIImage(named: celldata.image)
        titleLbl.customLabel(color: .C212121, size: .size_14, font: .Regular, text: celldata.title)
        priceLbl.customLabel(color: .CFA7916, size: .size_14, font: .Regular, text: celldata.price)
        counterLbl.customLabel(color: .C000000, size: .size_14, font: .Bold, text: "\(celldata.counter)")
    }
}
