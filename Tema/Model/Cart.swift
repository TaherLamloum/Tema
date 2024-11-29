//
//  Cart.swift
//  Tema
//
//  Created by taher elnehr on 04/09/2024.
//

import Foundation

struct Cart{
    var cartImg: String
    var title: String
    var price: String
    var counter: Int
}
var cartList: [Cart] = [Cart(cartImg: "cart1", title: "Egyption Medical Headsets", price: "6.34", counter: 1),
                        Cart(cartImg: "cart2", title: "Chines Thermomerers", price: "7.4", counter: 1),
                        Cart(cartImg: "cart3", title: "National Blood Glucose", price: "5.8", counter: 1)]
