//
//  ListHomeUIView.swift
//  logbook-ios
//
//  Created by Nuriansyah Malik on 27/12/22.
//

import SwiftUI

struct ListHomeUIView: View {
    var body: some View {
        VStack(alignment: .leading){
            VStack{
                Text("Welcome, Fitra Ananda")
            }
            .padding([.leading,.trailing,.bottom])
            VStack(alignment: .leading){
                Text("iOS Developer - Gojek")
                Text("Magang  Bersitifikat Studi Indepent")
                Text("5 Agustus - 3 November")
            }
            .padding([.leading,.trailing,.bottom])
            VStack(alignment: .leading) {
                Text("Kegiatan")
                    .font(.title)
                    .fontWeight(.heavy)
                CardView()
                CardView()
            }
            Spacer()
        }
    }
}

struct ListHomeUIView_Previews: PreviewProvider {
    static var previews: some View {
        ListHomeUIView()
    }
}

struct CardView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 12)
                    .frame(width: 320,height: 160)
                    .padding()
                    .foregroundColor(.secondary)
                    .shadow(radius: 15)
                    .overlay {
                        Image(systemName: "pencil.line")
                            .padding(EdgeInsets(top: -70, leading: -135, bottom: 25, trailing: 25))
                        Text("Sudah Dibuat")
                            .padding(EdgeInsets(top: -73, leading: -99, bottom: 25, trailing: 25))
                        HStack{
                            Text("12 - 31 Desember")
                                .font(.callout)
                            Image(systemName: "plus.circle")
                                .font(.title2)
                            Image(systemName: "plus.circle")
                                .font(.title2)
                            Image(systemName: "plus.circle")
                                .font(.title2)
                            Image(systemName: "plus.circle")
                                .font(.title2)
                            Image(systemName: "plus.circle")
                                .font(.title2)
                        }
                        .padding(EdgeInsets(top: 15, leading:15, bottom: 75, trailing: 7))
                        Button{
                            
                        } label: {
                            NavigationLink(destination: ListLaporanKegiatanUIView()){
                                Text("Isi Laporan Kegiatan")
                            }
                        }
                        .frame(width: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(20)
                        .padding(.top,75)
                    }
            }
        }//:ZStack
    }
}
