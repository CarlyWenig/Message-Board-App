import Foundation
import SwiftUI


struct Message: Identifiable, Codable {
    var id = UUID()
    var username: String
    var message : String
    var time = Date()
    
}

