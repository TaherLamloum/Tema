//
//  More50.swift
//  Tema
//
//  Created by taher elnehr on 30/11/2024.
//

import Foundation
struct More50 {
    var title: String
    var isSwitch: Bool = false
    var isArabic: Bool = false
}
var more50List: [More50] = [More50(title: Lbls.EDIT_PROFILE.title, isSwitch: false),
                            More50(title: Lbls.CHANGE_PASSWORD.title, isSwitch: false),
                            More50(title: Lbls.PRIVATE_ACCOUNT.title, isSwitch: true),
                            More50(title: Lbls.LOOPED.title, isSwitch: true),
                            More50(title: Lbls.LANGUAGE.title, isSwitch: false, isArabic: true),
                            More50(title: Lbls.SEND_PRIVATE_MESSAGE.title, isSwitch: false),]
