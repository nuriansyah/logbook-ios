//
//  DetailKegiatanUIView.swift
//  logbook-ios
//
//  Created by Nuriansyah Malik on 27/12/22.
//

import SwiftUI

struct DetailKegiatanUIView: View {
    @State var comment: String = ""
    var body: some View {
        VStack{
            Rectangle()
                .frame(width: .infinity,height: 150)
                .foregroundColor(.secondary.opacity(0.2))
                .overlay {
                    VStack(alignment: .leading,spacing: 15) {
                        Text("12 Desember")
                            .frame(maxWidth: .infinity,alignment:.topLeading)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        Text("Belajar docker container samapai membuat docker registry untuk mempermudah continus delivery dan continous integrated untuk mempermudah saat release deployment")
                    }
                    .padding([.leading])
                }
            Text("Comments")
            ScrollView{
                CommentsView()
                CommentsView()
                CommentsView()
            }
            Spacer()
            HStack{
                Rectangle()
                    .frame(width: .infinity,height: 80)
                    .foregroundColor(.black.opacity(0.1))
                    .overlay {
                        ZStack{
                            TextField("Comments...", text:$comment ,axis: .vertical)
                                .padding(.leading,25)
                                .multilineTextAlignment(.leading)
                        }
                    }
            }
        }
    }
}

struct DetailKegiatanUIView_Previews: PreviewProvider {
    static var previews: some View {
        DetailKegiatanUIView()
    }
}

struct CornerRadiusShape: Shape {
    var radius = CGFloat.infinity
    var corners = UIRectCorner.allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
struct CornerRadiusStyle: ViewModifier {
    var radius: CGFloat
    var corners: UIRectCorner

    func body(content: Content) -> some View {
        content
            .clipShape(CornerRadiusShape(radius: radius, corners: corners))
    }
}
extension View {
    func cornerRadius(radius: CGFloat, corners: UIRectCorner) -> some View {
        ModifiedContent(content: self, modifier: CornerRadiusStyle(radius: radius, corners: corners))
    }
}

struct CommentsView: View {
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: .infinity,height: 100)
                .foregroundColor(.secondary.opacity(0.2))
                .cornerRadius(radius: 12, corners: [.topLeft,.topRight,.bottomRight])
                .padding()
                .overlay {
                    VStack{
                        Text("Fitra Ananda")
                            .frame(maxWidth: .infinity,alignment: .topLeading)
                            .font(.headline)
                            .padding(.leading,25)
                        
                        VStack(alignment:.leading) {
                            Text("Menjelaskan kembali perihal bagaimana docker bisa berjalan dengan benar sesuai dengan container image")
                                .frame(maxWidth: .infinity,alignment: .leading)
                                .padding(.leading,25)
                            
                        }
                        .padding(.trailing)
                    }
                }
        }
    }
}
