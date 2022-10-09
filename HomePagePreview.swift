//
//  HomePagePreview.swift
//  Awise
//
//  Created by liu zhenke on 10/6/22.
//

import Foundation
import SwiftUI

struct SideMenuView: View{
    @Binding var isShowing: Bool
    var body: some View{
        ZStack{
            LinearGradient(gradient: Gradient(colors:[Color.white, Color.purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            //call Bar
            VStack{
                SideMenuHeaderView(isShowing: $isShowing)
                    .frame(height:240)
                
                ForEach(SideMenuViewModel.allCases, id: \.self){ option in
                    NavigationLink(
                        destination: Text(option.title),
                        
                        label:{
                            
                            SideMenuOtptionView(viewModel: option)
                        })
                }
                Spacer()
            }
        }
            .navigationBarHidden(true)
        }
        

    }

struct SideMenuOtptionView : View{
    let viewModel: SideMenuViewModel
    var body: some View{
        HStack(spacing:16 ){
            Image(systemName:viewModel.imageName)
                .frame(width:24, height:24)
            Text(viewModel.title)
                .font(.system(size: 15, weight:.semibold))
            
            Spacer()
        }
        .padding()
    }
}

struct HomePageView: View {
    @State private var isShowing = false
    var body: some View{
        NavigationView{
            ZStack{
                if isShowing{
                    SideMenuView(isShowing: $isShowing)
                }
                HomeView()
                    .cornerRadius(isShowing ? 20 : 10)
                    .offset(x:isShowing ? 300 : 0, y:isShowing ? 44:0)
                    .scaleEffect(isShowing ? 0.8 : 1)
                    .navigationBarItems(leading:Button(action:{
                        withAnimation(.spring()){
                            isShowing.toggle()
                        }
                    },label:{
                        Image(systemName: "list.bullet")
                            .foregroundColor(.black)
                    }))
                   // .navigationTitle("Home")
            }
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}


