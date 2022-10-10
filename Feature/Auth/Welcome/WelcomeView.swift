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
            Image(ImageEnums.appLogo.rawValue)
            Spacer()
            SocialButton(title: ImageEnums.facebook.rawValue, backgroundColor: Color.deepSkyBlue, foregroundColor: .white)
            SocialButton(title: ImageEnums.google.rawValue, backgroundColor: .white, foregroundColor: .gray)
            SocialButton(title: ImageEnums.apple.rawValue, backgroundColor: .black, foregroundColor: .white)
            Divider()
                .frame(width: 230)
                .frame(height: 2)
                .overlay(.white)
                .opacity(0.7)
                .padding()
            emailButton

        }
            .padding(.horizontal, 10)
            .padding(.bottom, 20)
            .background(backgroundImage)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}


extension WelcomeView {
    var emailButton: some View {
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

    var backgroundImage: some View {
        ZStack{
            Image(ImageEnums.orange.rawValue)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .offset(x: -32)
            Color(.red).opacity(0.15).ignoresSafeArea()
        }
        
    }
}
