//
//  SwiftUICryptoApp.swift
//  SwiftUICrypto
//
//  Created by itserviceimac on 02/09/24.
//

import SwiftUI

@main
struct SwiftUICryptoApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
