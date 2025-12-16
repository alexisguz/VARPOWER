import Foundation

struct ValidationResult: Hashable {
    let isValid: Bool
    let violations: [RuleViolation]
    let notes: String?
}
