//
//  Search41TVCell.swift
//  Tema
//
//  Created by taher elnehr on 18/11/2024.
//

import UIKit

class Search41TVCell: UITableViewCell {

    @IBOutlet weak var searchImg: UIImageView!
    @IBOutlet weak var searchTitleLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        mainQueue {
            self.searchImg.addCircleRadius()
        }
    }
}
extension Search41TVCell{
    func initCell(cellData: search) {
        searchImg.image = UIImage(named: cellData.image)
        searchTitleLbl.customLabel(color: .C000000, size: .size_14, font: .Regular, text: cellData.name)
    }
}
