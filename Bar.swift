//
//  Bar.swift
//  Awise
//
//  Created by liu zhenke on 10/7/22.
//

import SwiftUI


struct SideMenuHeaderView: View{
    @Binding var isShowing: Bool
    var body: some View{
        ZStack(alignment: .topTrailing){
            Button(action: {isShowing.toggle()}, label:{
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.black)
                    .padding()
                
            })
            VStack(alignment: .leading){
                Image("signup")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .clipShape(Circle())
                    .frame(width:64, height:64)
                    .padding(.bottom,16)
                
                
                Text("Zhenke Liu")
                    .font(.system(size:24, weight:.semibold))
                
                Text("@zliu365")
                    .font(.system(size:14))
                
                HStack(spacing:12){
                    HStack(spacing:4){
                        Text("1").bold()
                        Text("Roommate")
                    }
                    
                    HStack(spacing:4){
                        Text("2").bold()
                        Text("Contact")
                    }
                    Spacer()
                    
                }
                Spacer()
            }
            .padding()
        }
    }
}

struct bar_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}


