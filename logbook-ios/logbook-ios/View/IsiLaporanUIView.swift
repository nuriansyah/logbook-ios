//
//  IsiLaporanUIView.swift
//  logbook-ios
//
//  Created by Nuriansyah Malik on 27/12/22.
//

import SwiftUI

struct IsiLaporanUIView: View {
    @State var text: String = ""
    
    var body: some View {
        VStack{
            Text("Isi Laporan Harian!")
                .font(.title)
                .padding()
            Text("Senin, 23 Desember 2023")
                .font(.subheadline)
            
            Text("Bagaimana Kegiatanmu Hari ini?")
                .font(.headline)
                .padding()
            VStack {
                RoundedRectangle(cornerRadius: 8)
                    .stroke()
                    .frame(width:.infinity,height: 200)
                    .padding()
                    .overlay(
                        ZStack {
                            TextField("note: ceritakan kegiatan mu saat melaksankan kampus merdeka", text: $text,axis: .vertical)
                                .multilineTextAlignment(.leading)
                                .frame(width: .infinity,height: 200,alignment: .topLeading)
                                .padding([.leading,.top,.horizontal,.bottom])
                                .padding(.leading,10)
                        }
                    )
            }
            Button{
                
            }label: {
                Text("Simpan!")
                    .padding()
                    .foregroundColor(.black)
                
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.black, lineWidth: 3)
                    }
            }
        }
    }
}


struct IsiLaporanUIView_Previews: PreviewProvider {
    static var previews: some View {
        IsiLaporanUIView()
    }
}
