//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Alfian Losari on 19/04/20.
//  Copyright © 2020 Alfian Losari. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            StatisticsTabView()
                .tabItem {
                    VStack {
                        Text("Dashboard")
                        Image(systemName: "chart.pie")
                    }
            }
            .tag(0)
            
            ExpensesTabView()
                .tabItem {
                    VStack {
                        Text("Expenses")
                        Image(systemName: "tray")
                    }
            }
            .tag(1)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
