//
//  Lbls.swift
//  Tema
//
//  Created by taher elnehr on 11/08/2024.
//

import Foundation
enum Lbls: String{
    case CONTINUE = "continueAsGuestLbl"
    case ACCOUNT = "accountLbl"
    case AGREE = "iAgreeLbl"
    case NAME = "nameLbl"
    case CURRENCY = "currencyLbl"
    case GOLDEN_PACKAGE = "goldenPackageNameLbl"
    case GOLDEN_PACKAGE_ADS = "goldenPackageAdsLbl"
    case GOLDEN_PACKAGE_DAYS = "goldenPackageDaysLbl"
    case GOLDEN_PACKAGE_PRICE = "goldenPackagePriceLbl"
   
    case MEDIUM_PACKAGE = "mediumPackageNameLbl"
    case MEDIUM_PACKAGE_ADS = "mediumPackageAdsLbl"
    case MEDIUM_PACKAGE_DAYS = "mediumPackageDaysLbl"
    case MEDIUM_PACKAGE_PRICE = "mediumPackagePriceLbl"
    
    case BLUE_PACKAGE = "bluePackageNameLbl"
    case BLUE_PACKAGE_ADS = "bluePackageAdsLbl"
    case BLUE_PACKAGE_DAYS = "bluePackageDaysLbl"
    case BLUE_PACKAGE_PRICE = "bluePackagePriceLbl"
    
    case GREEN_PACKAGE = "greenPackageNameLbl"
    case GREEN_PACKAGE_ADS = "greenPackageAdsLbl"
    case GREEN_PACKAGE_DAYS = "greenPackageDaysLbl"
    case GREEN_PACKAGE_PRICE = "greenPackagePriceLbl"
    
    case CURRENT_LOCATION = "currentLocationLbl"
    case NEW_ADRESS = "newAdressLbl"
    case TITLE_ADRESS = "titleLbl"
    case EDIT_PROFILE = "editProfileLbl"
    case CHANGE_PASSWORD = "changePasswordLbl"
    case PRIVATE_ACCOUNT = "privateAccountLbl"
    case LOOPED = "loopedLbl"
    case LANGUAGE = "languageLbl"
    case SEND_PRIVATE_MESSAGE = "sendPrivateMessageLbl"
    
    
    var title: String {
        return self.rawValue.localized
    }
}
