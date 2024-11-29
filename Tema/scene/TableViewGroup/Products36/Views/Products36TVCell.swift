//
//  Products36TVCell.swift
//  Tema
//
//  Created by taher elnehr on 13/09/2024.
//

import UIKit
protocol Products36TVCellProtocol: NSObjectProtocol{
    func favouriteBtnClicked(cellIndex: Int)
}

class Products36TVCell: UITableViewCell {

    @IBOutlet weak var companyLogoImg: UIImageView!
    @IBOutlet weak var statusView: UIView!
    @IBOutlet weak var statusLbl: UILabel!
    @IBOutlet weak var vendorLbl: UILabel!
    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var favouriteBtn: UIButton!
    @IBOutlet weak var pricelbl: UILabel!
    @IBOutlet weak var priceView: UIView!
    @IBOutlet var radiusViews: [UIView]!
    @IBOutlet weak var dayslbl: UILabel!
    @IBOutlet weak var hoursLbls: UILabel!
    @IBOutlet weak var minutesLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var daysValueLbl: UILabel!
    @IBOutlet weak var hoursValueLbl: UILabel!
    @IBOutlet weak var minutesValueLbl: UILabel!
    
    var cellindex = 0
    weak var delegate: Products36TVCellProtocol?
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        productImg.addRadius(radius: 10)
        for view in radiusViews{
            view.addRadius(radius: 4)
            view.backgroundColor = Colors.C070034.hex
        }
        companyLogoImg.addCircleRadius()
        statusView.addCircleRadius()
        dayslbl.customLabel(color: .C525252, size: .size_10, font: .Bold, text: "DYS", direction: .CENTER)
       hoursLbls.customLabel(color: .C525252, size: .size_10, font: .Bold, text: "HRS", direction: .CENTER)
        minutesLbl.customLabel(color: .C525252, size: .size_10, font: .Bold, text: "MIN", direction: .CENTER)
        priceView.addCustomShadow(x: 0, y: 3, blur: 6, spread: 0, shadowColor: Colors.C000000.rawValue, opacity: 0.16)
        priceView.addRadius(radius: 8)
    }

    @IBAction func favouriteBtnClicked(_ sender: Any) {
        delegate?.favouriteBtnClicked(cellIndex: cellindex)
    }
}
extension Products36TVCell{
    func initCell(cellData: Products36){
        statusLbl.customLabel(color: .CFFFFFF, size: .size_10, font: .Bold, text: cellData.statusView)
        vendorLbl.customLabel(color: .CFFFFFF, size: .size_12, font: .Bold, text: "Vendor name here vend…, Fintas")
        pricelbl.customLabel(color: .C070034, size: .size_14, font: .Bold, text: cellData.productPrice)
        daysValueLbl.customLabel(color: .CFFAE00, size: .size_12, font: .Bold, text: cellData.daysCount, direction: .CENTER)
        hoursValueLbl.customLabel(color: .CFFAE00, size: .size_12, font: .Bold, text: cellData.hoursCount, direction: .CENTER)
        minutesValueLbl.customLabel(color: .CFFAE00, size: .size_12, font: .Bold, text: cellData.minutesCount, direction: .CENTER)
        descriptionLbl.customLabel(color: .C2C2C2C, size: .size_11, font: .Regular, text: cellData.description, nOlines: 2, direction: .CENTER)
        productImg.image = UIImage(named: cellData.productImage)
        statusView.backgroundColor = (cellData.statusView == "Open") ? Colors.C28D68C.hex : Colors.CFFFFFF.hex
        favouriteBtn.setImage(UIImage(named: cellData.isFavourite ? "favouriteselect36" : "starUnSelect36"), for: .normal)
    }
}
