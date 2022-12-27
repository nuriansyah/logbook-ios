//
//  ProfileUIView.swift
//  logbook-ios
//
//  Created by Nuriansyah Malik on 27/12/22.
//

import SwiftUI

struct ProfileUIView: View {
    @ObservedObject var viewModel = LoginViewModel()
    var body: some View {
        ZStack{
            VStack(alignment: .leading) {
                HStack{
                    Image(systemName: "person.circle")
                        .font(.largeTitle)
                        .padding(.leading)
                    VStack(alignment: .leading,spacing: 5){
                        Text("Fitra Ananda")
                        Text("Teknik Informatika - 183040098")
                            .font(.footnote)
                    }
                    .padding([.leading,.trailing])
                }
                .padding()
                List{
                    Text("Ubah Profile")
                    Text("Lengkapi Data")
                }
                
                Button(action:{
                    viewModel.signout()
                    
                }){
                    Text("Sign Out")
                        .frame(width: 120,height: 40)
                        .font(.headline)
                        .background(.black.opacity(0.1))
                        .foregroundColor(.red)
                        .cornerRadius(12)
                        .padding()
                    NavigationLink(destination: LoginUIView()) {
                        
                    }
                    .hidden()
                }
                .frame(width: .infinity)
            }
        }
    }
}

struct ProfileUIView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileUIView()
    }
}
