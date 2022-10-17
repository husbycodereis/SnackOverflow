//
//  SizeExtensions.swift
//  SnackOverflow (iOS)
//
//  Created by Ali Riza Reisoglu on 17.10.2022.
//

import Foundation
import SwiftUI

extension GeometryProxy{
    
    func dynamicHeight(height: Double) -> Double {
        return size.height * height
    }
}
