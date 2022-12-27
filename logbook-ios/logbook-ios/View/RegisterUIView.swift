//
//  RegisterUIView.swift
//  logbook-ios
//
//  Created by Nuriansyah Malik on 27/12/22.
//

import SwiftUI

struct RegisterUIView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var email: String = ""
    var body: some View {
        VStack{
            Image("Logo Welcome")
                .frame(maxWidth:.infinity,alignment: .leading)
            VStack(alignment: .leading, content: {
                Text("Username")
                    .padding(.bottom,-25)
                HStack {
                    Image(systemName: "person.fill")
                        .padding(.top,25)
                    TextField("Username...",text: $email)
                        .padding(.top,25)
                }
                .font(.headline)
                Divider()
            })
            .padding(.top,25)
            VStack(alignment: .leading, content: {
                Text("Email")
                    .padding(.bottom,-25)
                HStack {
                    Image(systemName: "envelope.fill")
                        .padding(.top,25)
                    TextField("Email...",text: $email)
                        .padding(.top,25)
                }
                .font(.headline)
                Divider()
            })
            .padding(.top,25)
            VStack(alignment: .leading, content: {
                Text("Password")
                    .padding(.bottom,-25)
                HStack {
                    Image(systemName: "lock.fill")
                        .padding(.top,25)
                    SecureField("Password..",text: $email)
                        .padding(.top,25)
                }
                .font(.headline)
                Divider()
            })
            .padding(.top,25)
            Button{
                
            }label: {
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
        .padding(20)
    }
}
struct RegisterUIView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterUIView()
    }
}
