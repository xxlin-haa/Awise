//
//  profile.swift
//  Awise
//
//  Created by liu zhenke on 10/31/22.
//


import SwiftUI
import Foundation

struct ProfileView: View{
    @State private var enable = true

    var body: some View {
                Form {
                    Image("signup")
                    .resizable()
                    .clipped()
                    .frame(width: 100, height: 100, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.blue, lineWidth: 2.0))
                    Section(header: Text("Basic Information")) {
                        HStack {
                            Text("First Name")
                            Spacer(minLength: 100)
                            Text("Zhenke")
                        }
                        HStack {
                            Text("Last Name")
                            Spacer(minLength: 100)
                            Text("Liu")
                        }
                    }
                    Section(header: Text("Additional")) {
                        HStack {
                            Text("Gender")
                            Spacer(minLength: 100)
                            Text("Male")
                        }
                    }
                }
        }
}
