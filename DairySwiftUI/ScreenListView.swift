//
//  ContentView.swift
//  DairySwiftUI
//
//  Created by Ryuki Murakami on 2020/11/28.
//

import SwiftUI

struct ScreenListView: View {
    @ObservedObject var AppVM = AppViewModel()
    var body: some View {
        List {
            ForEach(AppVM.AppData) { app in
                NavigationLink(destination:  Day1SignUpView()) {
                    HStack {
                        HStack(spacing: 0.0) {
                            Text("Day")
                            Text("\(app.day)")
                        }
                        Text(app.title)
                    }
                }
            }
        }.navigationTitle("App List")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ScreenListView()
    }
}
