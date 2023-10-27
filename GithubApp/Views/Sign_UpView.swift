//
//  Sign_UpView.swift
//  GithubApp
//
//  Created by Aljwhra Alnasser on 27/10/2023.
//

import SwiftUI

struct Sign_UpView: View {
    
    
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        NavigationStack{
            ScrollView{
                
                VStack(spacing:80){
                    
                    VStack(spacing:20){
                        
                        //MARK: - Text Field
                     
        
                        TextField("Email", text: $email)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                        
                        
                        SecureField("Password", text: $password)
                        // .textFieldStyle()
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                        SecureField("Confirm Password", text: $confirmPassword)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                        
                        
                    }
                    
                    Button(action: {
                        // Handle login logic here
                        print("Email: \(email)")
                        print("Password: \(password)")
                    }) {
                        Text("Sign up")
                            .font(.title2).bold()                            
                            .frame( maxWidth: .infinity)
                            .padding()
                            .background(Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                    }
                    
                }
            }
            .padding()
            .navigationTitle("Sign Up")
            
        }
    }
}

//
//#Preview {
//    Sign_UpView()
//}

struct  Sign_UpViewPreviews: PreviewProvider {
    static var previews: some View {
        Sign_UpView()
    }
}
