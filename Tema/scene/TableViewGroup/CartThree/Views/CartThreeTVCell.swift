//
//  CartThreeTVCell.swift
//  Tema
//
//  Created by taher elnehr on 06/09/2024.
//

import UIKit
protocol CartThreeTVCellProtocol: NSObjectProtocol{
    func deleteBtnClicked(cellIndex: Int)
    func plusBtnClicked(cellIndex: Int)
    func minusBtnClicked(cellIndex: Int)
}

class CartThreeTVCell: UITableViewCell {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var currencyLbl: UILabel!
    @IBOutlet weak var counterLbl: UILabel!
    
    var cellIndex = 0
    weak var delegate: CartThreeTVCellProtocol?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        mainView.addRadius(radius: 5)
        mainView.addBorder(color: .CE6E6E6, width: 1)
        currencyLbl.customLabel(color: .CD8AD45, size: .size_14, font: .Regular, text: "KWD")
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
extension CartThreeTVCell{
    func initCell(celldata: CartThree){
        mainImage.image = UIImage(named: celldata.image)
        nameLbl.customLabel(color: .C212121, size: .size_14, font: .Bold, text: celldata.title, nOlines: 2)
        priceLbl.customLabel(color: .CD8AD45, size: .size_14, font: .Regular, text: celldata.price)
        counterLbl.customLabel(color: .C212121, size: .size_14, font: .Regular, text: "\(celldata.counter)")
    }
}
