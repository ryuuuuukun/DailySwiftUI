//
//  Day1SignUpView.swift
//  DairySwiftUI
//
//  Created by Ryuki Murakami on 2020/11/28.
//

import SwiftUI

struct Day1SignUpView: View {
    var body: some View {
        ZStack {
            ZStack {
                Image("LifesumBackImage")
                    .resizable()
                    .scaledToFill()
                Rectangle()
                    .fill(Color.black)
                    .opacity(0.3)
            }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(spacing: 12.0) {
                VStack {
                    Text("WELCOME TO")
                        .foregroundColor(.white)
                        .font(.system(size: 16))
                    Image("LifesumLogo")
                        .resizable()
                        .frame(width: 222.0, height: 52.0)
                }
                .padding(.top, 24.0)
                Spacer()
                VStack(spacing: 32.0) {
                    NavigationLink(destination: Text("Sign In")) {
                        SignInViewButton(text: "SIGN IN", gradient: Gradient(colors: [Color("LifesumGradientLeading"), Color("LifesumGradientTrailing")]))
                    }
                    NavigationLink(destination: Text("Log In")) {
                        SignInViewButton(text: "LOG IN")
                    }
                }
                .padding(.bottom, 32.0)
            }
        }.navigationBarHidden(true)
    }
}

struct SignInViewButton: View {
    let text: String
    var gradient: Gradient?
    var body: some View {
        VStack {
            ZStack {
                if let gradient = gradient {
                    LinearGradient(
                            gradient: gradient,
                            startPoint: .leading, endPoint: .trailing
                    )
                }
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 16))
            }
        }
        .frame(width: 300.0, height: 56.0)
        .background(Blur(style: .systemThickMaterial).opacity(0.45))
        .cornerRadius(28)
    }
}

struct Blur: UIViewRepresentable {
    var style: UIBlurEffect.Style = .systemMaterial

    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}


struct Day1SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        Day1SignUpView()
    }
}
