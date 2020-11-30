//
//  DailySwiftUIApp.swift
//  DailySwiftUI
//
//  Created by Ryuki Murakami on 2020/11/28.
//

import SwiftUI

@main
struct DailySwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScreenListView()
            }
        }
    }
}
