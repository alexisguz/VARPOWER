import Foundation

struct RuleViolation: Identifiable, Hashable {
    let id = UUID()
    let code: String
    let description: String
    let severity: Int
}
