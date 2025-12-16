import Foundation

final class ValidationEngine {
    func validate(liftType: LiftType, biomech: BiomechSnapshot) -> ValidationResult {
        // TODO: Implementar reglas IPF reales:
        // - Sentadilla: profundidad (cadera por debajo de rodilla)
        // - Banca: pausa, glúteos, lockout, etc.
        // - Peso muerto: lockout rodillas/hombros, control de barra, etc.
        return ValidationResult(isValid: true, violations: [], notes: "Motor de validación en construcción.")
    }
}

struct BiomechSnapshot: Hashable {
    // TODO: Completar con ángulos, posiciones normalizadas, timestamps, etc.
    let timestamp: TimeInterval
}
