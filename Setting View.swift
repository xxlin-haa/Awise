//
//  setting view.swift
//  Awise
//
//  Created by liu zhenke on 10/24/22.
//

import SwiftUI

struct Setting_Previews: PreviewProvider {
     static var previews: some View {
        SettingView()
    }
}

struct SettingView: View{
    var body: some View {
        Form{
            Section(header: Text("Setting"),footer:Text("")){
                
                Toggle(isOn:.constant(true),
                       label:{
                    Text("Normal mode")
                })
                Toggle(isOn: .constant(true), label: {
                    Text("Tinder Recommendation")
                })
            }
        }
    }
}
