//
//  ExpensesTabView.swift
//  ExpenseTracker

import SwiftUI
import CoreData

struct SettingsTabView: View {
    
    @Environment(\.managedObjectContext)
        var context: NSManagedObjectContext
    @State private var show = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Money Manager App")
                    .font(.title)
                Text("Version: 1.0.3")

                Text("Developed by: Team Exponent")
                    .font(.subheadline)
                
            }
            .navigationBarTitle("Settings", displayMode: .inline)
        }
        
        
    }
}

struct SettingsTabView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsTabView()
    }
}
