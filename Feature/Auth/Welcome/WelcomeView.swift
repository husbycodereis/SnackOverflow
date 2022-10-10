//
//  WelcomeView.swift
//  SnackOverflow (iOS)
//
//  Created by Ali Riza Reisoglu on 10.10.2022.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Spacer()
            Image("app_logo")
            Spacer()
            SocialButton(title: "facebook", backgroundColor: .blue, foregroundColor: .white)
            SocialButton(title: "google", backgroundColor: .white, foregroundColor: .gray)
            SocialButton(title: "apple", backgroundColor: .black, foregroundColor: .white)
            Divider()
                .frame(width: 230)
                .frame(height: 2)
                .overlay(.white)
                .opacity(0.7)
                .padding()
            Button {
                //action here
            } label: {
                HStack {
                    Spacer()
                    Text("Sign Up with Email")
                        .bold()
                    Spacer()
                }
                    .padding(10)

            }
                .background(.white)
                .foregroundColor(.orange)
                .cornerRadius(8)

        }
        .padding(.horizontal, 10)
        .padding(.bottom, 20)
            .background(
            Image("orange")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .offset(x: -32)





        )
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}


struct SocialButton: View {
    var title: String
    var backgroundColor: Color
    var foregroundColor: Color
    var body: some View {
        Button {
            //action here
        } label: {
            HStack {
                Image(title)
                Text("Sign In With \(title)")
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
