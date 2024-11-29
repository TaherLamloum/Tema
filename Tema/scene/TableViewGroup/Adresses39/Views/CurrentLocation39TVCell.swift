//
//  CurrentLocation39TVCell.swift
//  Tema
//
//  Created by taher elnehr on 23/10/2024.
//

import UIKit

class CurrentLocation39TVCell: UITableViewCell {
    
    @IBOutlet weak var currentLocationLbl: UILabel!
    @IBOutlet weak var mainView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        currentLocationLbl.customLabel(color: .C070034, size: .size_12, font: .Regular, text: Lbls.CURRENT_LOCATION.title)
        mainView.addRadius(radius: 8)
        mainView.addBorder(color: .CEFEFEF, width: 1)
        
    }
 
}
