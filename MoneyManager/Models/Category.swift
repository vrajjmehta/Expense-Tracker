//
//  Category.swift
//  ExpenseTracker

import Foundation
import SwiftUI

enum Category: String, CaseIterable {
    
    case home
    case transportation
    case food
    case entertainment
    case groceries
    case education
    case donation
    case shopping
    case health
    case utilities
    case other
    
    var systemNameIcon: String {
        switch self {
        case .education: return "book.circle.fill"
        case .home: return "house.fill"
        case .donation: return "heart.circle.fill"
        case .food: return "f.circle.fill"
        case .groceries: return "cart.fill"
        case .entertainment: return "tv.music.note"
        case .health: return "waveform.path.ecg"
        case .shopping: return "bag.fill"
        case .transportation: return "airplane"
        case .utilities: return "envelope.open.fill"
        case .other: return "tag.circle.fill"
        }
    }
    
    var color: Color {
        switch self {
        case .education: return Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        case .home: return Color(#colorLiteral(red: 1, green: 0.7021846175, blue: 0, alpha: 0.7856514085))
        case .donation: return Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 0.7253796215))
        case .food: return Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 0.8904324384))
        case .groceries: return Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))
        case .entertainment: return Color(#colorLiteral(red: 0.1044865027, green: 0.2179180086, blue: 1, alpha: 1))
        case .health: return Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        case .shopping: return Color(#colorLiteral(red: 0, green: 0.9371147752, blue: 0.6177784801, alpha: 0.920196963))
        case .transportation: return Color(#colorLiteral(red: 0.6218146682, green: 0, blue: 0.09867372364, alpha: 0.9493838028))
        case .utilities: return Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        case .other: return Color(#colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1))
        }
    }
}

extension Category: Identifiable {
    var id: String { rawValue }
}

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
