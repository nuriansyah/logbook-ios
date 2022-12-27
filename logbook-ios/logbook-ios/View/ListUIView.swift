//
//  ListUIView.swift
//  logbook-ios
//
//  Created by Nuriansyah Malik on 27/12/22.
//

import SwiftUI

struct ListUIView: View {
    var body: some View {
        NavigationStack {
            ZStack{
                VStack{
                    Rectangle()
                        .frame(width: .infinity,height: 120)
                        .foregroundColor(.secondary.opacity(0.2))
                        .overlay {
                            Text("List Kegiatan")
                                .font(.title)
                                .fontWeight(.heavy)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                                .padding([.leading,.bottom])
                        }
                    ScrollView{
//                        ForEach(0..<5) { index in
//                            NavigationLink(destination: DetailKegiatanUIView()) {
                                SudahDiisi()
                                BelumDiisi()
//                            }
//                        }
                    }
                }
            }
        }
    }
}

struct ListUIView_Previews: PreviewProvider {
    static var previews: some View {
        ListUIView()
    }
}
struct SudahDiisi: View {
    var body: some View {
        VStack{
            Rectangle()
                .stroke(lineWidth: 3)
                .frame(maxWidth: .infinity,minHeight: 150,maxHeight: 200)
                .foregroundColor(Color("sudah_diisi"))
                .overlay {
                    VStack{
                        HStack {
                            Text("12 Desember")
                                .frame(maxWidth: .infinity,alignment: .topLeading)
                                .padding([.leading,.top])
                            Image(systemName: "pencil.line")
                                .foregroundColor(Color("sudah_diisi"))
                            NavigationLink(destination: DetailKegiatanUIView()) {
                                Text("Sudah Diisi")
                                    .padding(.trailing)
                                .foregroundColor(Color("sudah_diisi"))
                            }
                        }
                        
                        Rectangle()
                            .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
                            .foregroundColor(.secondary.opacity(0.2))
                            .overlay {
                                Text("Belajar Menggunakan docker untuk build aplikasi menggunakan container untuk running app di aws cloud")
                                    .frame(maxWidth: .infinity)
                                    .padding([.leading,.bottom,.trailing])
                            }
                            .foregroundColor(.black)
                    }
                }
        }
        .padding()
    }
}
struct BelumDiisi: View {
    var body: some View {
        VStack{
            Rectangle()
                .stroke(lineWidth: 3)
                .frame(maxWidth: .infinity,minHeight: 150,maxHeight: 200)
                .foregroundColor(Color("belum_diisi"))
                .overlay {
                    VStack{
                        HStack {
                            Text("13 Desember")
                                .frame(maxWidth: .infinity,alignment: .topLeading)
                                .padding([.leading,.top])
                                .foregroundColor(.black)
                            Image(systemName: "pencil.line")
                                .foregroundColor(Color("belum_diisi"))
                            NavigationLink(destination: IsiLaporanUIView()) {
                                Text("Belum Dibuat")
                                    .padding(.trailing)
                                .foregroundColor(Color("belum_diisi"))
                            }
                        }
                        
                        Rectangle()
                            .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
                            .foregroundColor(.secondary.opacity(0.2))
                        
                    }
                }
        }
        .padding()
    }
}
