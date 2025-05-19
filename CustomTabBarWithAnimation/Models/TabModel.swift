//
//  TabModel.swift
//  CustomTabBarWithAnimation
//
//  Created by Arnaldo Baumanis on 5/18/25.
//

import Foundation

enum TabModel: String, CaseIterable {
    case home = "Home"
    case favorites = "Favorites"
    case cart = "Cart"
    case search = "Search"
    case settings = "Settings"
    
    var systemImageName: String {
        switch self {
        case .home:
            return "house"
        case .favorites:
            return "star"
        case .cart:
            return "cart"
        case .search:
            return "magnifyingglass"
        case .settings:
            return "gearshape"
        }
    }
}
