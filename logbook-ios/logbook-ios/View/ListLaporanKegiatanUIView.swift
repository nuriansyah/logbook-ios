//
//  ListLaporanKegiatanUIView.swift
//  logbook-ios
//
//  Created by Nuriansyah Malik on 27/12/22.
//

import SwiftUI

struct ListLaporanKegiatanUIView: View {
    @State var comment: String = ""
    var body: some View {
        VStack{
            Rectangle()
                .frame(width: .infinity,height: 100)
                .foregroundColor(.black.opacity(0.2))
                .overlay {
                    VStack(alignment: .leading,spacing: 5){
                        Text("Laporan Kegiatan")
                            .font(.headline)
                        Text("12 - 16 Desember")
                            .font(.subheadline)
                    }
                    .padding(.trailing,150)
                }
            ScrollView{
                BelumDiisi()
            }
        }
        
    }
}

struct ListLaporanKegiatanUIView_Previews: PreviewProvider {
    static var previews: some View {
        ListLaporanKegiatanUIView()
    }
}
