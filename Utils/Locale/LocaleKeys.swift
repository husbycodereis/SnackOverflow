//
//  LocaleKeys.swift
//  SnackOverflow (iOS)
//
//  Created by Ali Riza Reisoglu on 17.10.2022.
//

import Foundation
import SwiftUI


struct LocaleKeys {
    enum Auth: String {
        case facebook = "signinFacebook"
        case google = "signinGoogle"
        case apple = "signinApple"
        case custom = "signupWithEmail"
    }
}

extension String {
    func locale() -> LocalizedStringKey{
        return LocalizedStringKey(self)
    }
}
