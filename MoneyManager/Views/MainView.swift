//
//  ContentView.swift
//  ExpenseTracker

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
            
            SettingsTabView()
                .tabItem {
                    VStack {
                        Text("Settings")
                        Image(systemName: "gear")
                    }
            }
            .tag(2)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
