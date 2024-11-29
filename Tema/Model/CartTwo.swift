//
//  CartTwo.swift
//  Tema
//
//  Created by taher elnehr on 05/09/2024.
//

import Foundation

struct CartTwo{
    var image: String
    var title: String
    var price: String
    var counter: Int
}
var cartTwoList: [CartTwo] = [CartTwo(image: "cartFish1", title: "زبيدي صغير جدا", price: "13.00", counter: 1),
                              CartTwo(image: "cartFish2", title: "زبيدي", price: "9.00", counter: 1),
                              CartTwo(image: "cartFish3", title: "هامور", price: "7.00", counter: 1)]
