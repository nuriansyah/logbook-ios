//
//  LoginUIView.swift
//  logbook-ios
//
//  Created by Nuriansyah Malik on 27/12/22.
//

import SwiftUI

struct LoginUIView:View {
    @ObservedObject var viewModel = LoginViewModel()
    
    var body: some View {
        if viewModel.isAuthenticated{
            HomeUIView()
        }else{
            VStack {
                Image("Logo")
                
                VStack(alignment: .leading, content: {
                    Text("Email")
                        .padding(.bottom,-25)
                    HStack {
                        Image(systemName: "envelope.fill")
                            .padding(.top,25)
                        TextField("Email...",text: $viewModel.email)
                            .padding(.top,25)
                    }
                    .font(.headline)
                    Divider()
                })
                .padding([.leading,.trailing,.bottom])
                VStack(alignment: .leading, content: {
                    Text("Password")
                        .padding(.bottom,-25)
                    HStack {
                        Image(systemName: "lock.fill")
                            .padding(.top,25)
                        SecureField("Password..",text: $viewModel.password)
                            .padding(.top,25)
                    }
                    .font(.headline)
                    Divider()
                })
                .padding([.leading,.trailing,.bottom])
                Button(action: {
                    viewModel.login()
                }){
                    Spacer()
                    Text("SIGN UP")
                        .padding(10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.black, lineWidth: 2)
                        }
                }
                .padding()
                .foregroundColor(.black)
            }
        }
    }
}

struct LoginUIView_Previews: PreviewProvider {
    static var previews: some View {
        LoginUIView()
    }
}
