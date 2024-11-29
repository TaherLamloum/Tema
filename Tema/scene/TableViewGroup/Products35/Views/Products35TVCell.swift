//
//  Products35TVCell.swift
//  Tema
//
//  Created by taher elnehr on 15/09/2024.
//

import UIKit
protocol Products35TVCellProtocol: NSObjectProtocol{
    func favouriteBtnClicked(cellIndex: Int)
}

class Products35TVCell: UITableViewCell {

    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var favouriteBtn: UIButton!
    @IBOutlet weak var vendorImg: UIImageView!
    @IBOutlet weak var statusView: UIView!
    @IBOutlet weak var statusLbl: UILabel!
    @IBOutlet weak var vendorLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    
    var cellIndex = 0
    weak var delegate: Products35TVCellProtocol?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        productImg.addRadius(radius: 10)
        vendorImg.addCircleRadius()
        statusView.addCircleRadius()
    }

    @IBAction func favouriteBtnClicked(_ sender: Any) {
        delegate?.favouriteBtnClicked(cellIndex: cellIndex)
    }
}
extension Products35TVCell{
    func initCell(cellData: Products36){
        statusLbl.customLabel(color: .CFFFFFF, size: .size_10, font: .Bold, text: cellData.statusView)
        vendorLbl.customLabel(color: .CFFFFFF, size: .size_12, font: .Bold, text: "Vendor name here vend…, Fintas")
        priceLbl.customLabel(color: .C070034, size: .size_14, font: .Bold, text: cellData.productPrice)
        descriptionLbl.customLabel(color: .C2C2C2C, size: .size_11, font: .Regular, text: cellData.description, direction: .CENTER)
        productImg.image = UIImage(named: cellData.productImage)
        statusView.backgroundColor = (cellData.statusView == "Open") ? Colors.C28D68C.hex : Colors.CFFFFFF.hex
        favouriteBtn.setImage(UIImage(named: cellData.isFavourite ? "favouriteselect36" : "starUnSelect36"), for: .normal)
    }
}
