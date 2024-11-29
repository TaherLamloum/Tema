//
//  Order.swift
//  Tema
//
//  Created by taher elnehr on 22/08/2024.
//

import Foundation

struct Order{
    var dat: String
    var number: String
    var price: String
    var status: String
    
    
}
var ordersList: [Order]=[Order(dat: "1/1/2020", number: "1", price: "20EGP", status: "Delivered"), Order(dat: "2/1/2020", number: "2", price: "20EGP", status: "Pending"), Order(dat: "3/1/2020", number: "3", price: "20EGP", status: "Processing"), Order(dat: "4/1/2020", number: "4", price: "20EGP", status: "Delivered"), Order(dat: "5/1/2020", number: "5", price: "20EGP", status: "Pending")]
