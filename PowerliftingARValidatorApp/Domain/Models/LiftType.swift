import Foundation

enum LiftType: String, CaseIterable {
    case squat, benchPress, deadlift

    var displayName: String {
        switch self {
        case .squat: return "Sentadilla"
        case .benchPress: return "Press de banca"
        case .deadlift: return "Peso muerto"
        }
    }
}
