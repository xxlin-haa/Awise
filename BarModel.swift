//
//  BarModel.swift
//  Awise
//
//  Created by liu zhenke on 10/8/22.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable{
    case profile
    case questionnaire
    case messages
    case notificationss
    case logout
        
    var title: String{
        switch self{
        case .profile: return "Profile"
        case .questionnaire: return "Questionnaire"
        case .messages: return "Messages"
        case .notificationss: return "Notifications"
        case .logout: return "Logout"
        }
    }
    
    var imageName: String{
        switch self{
        case .profile: return "person"
        case .questionnaire: return "list.bullet"
        case .messages: return "bubble.left"
        case .notificationss: return "bell"
        case .logout: return "house"
        }
    }
}
