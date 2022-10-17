//
//  SocialButton.swift
//  SnackOverflow (iOS)
//
//  Created by Ali Riza Reisoglu on 10.10.2022.
//

import SwiftUI

struct SocialButton: View {
    var title: LocalizedStringKey
    var imagePath: String
    var backgroundColor: Color
    var foregroundColor: Color
    var body: some View {
        Button {
            //action here
        } label: {
            HStack {
                Image(imagePath)
                Text(title)
                    .bold()
                Spacer()
            }
                .padding(14)

        }
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .cornerRadius(8)
            .padding(.vertical, 4)
    }
}
