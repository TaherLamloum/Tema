//
//  Leave.swift
//  Tema
//
//  Created by taher elnehr on 01/09/2024.
//

import Foundation
struct Leave{
    var date: String
    var name: String
    var status: String
}
let leaveList: [Leave]=[Leave(date: "11/9/2019", name: "Mohamed Gamal", status: "Waiting"),
                        Leave(date: "3/9/2019", name: "Mohamed Ashraf", status: "Waiting"),
                        Leave(date: "12/6/2019", name: "Hossam Ahmed", status: "Accepted"),
                        Leave(date: "22/1/2019", name: "Zain Mohamed", status: "Refused")]
