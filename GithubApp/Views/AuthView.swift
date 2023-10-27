//
//  AuthView.swift
//  GithubApp
//
//  Created by Aljwhra Alnasser on 26/10/2023.
//

//import SwiftUI
//
//
//struct AuthView: View {
//
//    let LoginOption: Array <LoginAuthOption> = [
//        .init(image: Image(systemName: "swift") , title: "Continue with Google" , titleColor: .black, backgroundColor:.red, borderColor: .blue)
//
//    ]
//
//
//    var body: some View {
//
//        VStack{
//
//            VStack{
//                Text("GitHup")
//                    .font(.largeTitle)
//                    .bold()
//            }
//            .frame(maxHeight: .infinity)
//            // .background(.red)
//
//            VStack{
//
//                ForEach(LoginOption) {  loginOption in
//
//
//                }
//        }
//        .frame(maxHeight: .infinity)
//
//
//        }
//    }
//
//}
//
//
//func makeLoginButton(option: LoginAuthOption) -> some View{
//
//    NavigationLink(
//        destination: {
//            Text(option.title)
//        },
//        label: {
//
//                HStack{
//                    Image(systemName: "swift")
//                      //  .resizable()
//                      //  .scaledToFit()
//                    Text(option.title)
//                        .foregroundColor(option.titleColor)
//
//
//                }.padding()
//                    .frame(maxWidth: .infinity)
//                    .background(
//                        RoundedRectangle(cornerRadius: 10)
//                            .fill(option.backgroundColor)
//                            .border(option.borderColor)
//                         //   .stroke(lineWidth: 2)
//
//                    )
//                    .padding(.horizontal)
//        }
//    )
//}
//
//    struct AuthView_previews: PreviewProvider{
//        static var previews: some View {
//            AuthView()
//        }
//    }
//
//
//
//    struct LoginAuthOption: Identifiable{
//
//        let id = UUID()
//        let image: Image
//        let title: String
//        let titleColor: Color
//        let backgroundColor: Color
//        let borderColor: Color
//
//
//
//    }
//

import SwiftUI

struct AuthView: View {
    
    let loginOptions: [LoginAuthOption] = [
        .init(image: Image("google-icon"), title: "Continue with Google", titleColor: .black, backgroundColor: .white, borderColor: .black.opacity(0.6)),
        .init(image: Image(systemName: "apple.logo"), title: "Continue with Apple", titleColor: .white, backgroundColor: .black, borderColor: .clear),
        .init(image: Image(systemName: "swift"), title: "Continue with Apple", titleColor: .black, backgroundColor: .blue, borderColor: .blue),
        .init(image: Image(systemName: "swift"), title: "Log in with email", titleColor: .black, backgroundColor: .red.opacity(0.7), borderColor: .clear),
    ]
    
    var body: some View {
        
        NavigationStack{
            VStack {
                VStack {
                    Text("GitHub")
                        .font(.largeTitle)
                        .bold()
                }
                .frame(maxHeight: .infinity)
                
                VStack {
                    ForEach(loginOptions) { loginOption in
                        makeLoginButton(option: loginOption)
                    }
                    
                    NavigationLink{
                        Sign_UpView()
                    } label: {
                        Text("New to GitHub? Sign Up")
                            .underline()
                            .foregroundColor(.black)
                            .bold()
                    }
                    
                    
                   
                    
                }
                .frame(maxHeight: .infinity)
                
                
                HStack{

                    Text("By clicking Sign Up, Continue with Apple, Continue with Google, or Continue with Facebook, you agree to Patreon's [Terms of Use](https://apple.com), [Privacy Policy](https://apple.com), and [Cookie Policy](https://apple.com).")
                        .multilineTextAlignment(.center)
                        .font(.caption)
                        
                    
                }.frame(maxWidth: .infinity )
                    .padding(.horizontal)
            }
        }
    }
    
    func makeLoginButton(option: LoginAuthOption) -> some View {
        NavigationLink(
            destination: ContentView(),
            label: {
                HStack {
                    option.image
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                    Text(option.title)
                        .bold()
                        .foregroundColor(option.titleColor)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(option.backgroundColor)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(option.borderColor, lineWidth: 2)
                        )
                )
                .padding(.horizontal)
            }
        )
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}

struct LoginAuthOption: Identifiable {
    let id = UUID()
    let image: Image
    let title: String
    let titleColor: Color
    let backgroundColor: Color
    let borderColor: Color
}
