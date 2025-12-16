import Foundation

final class AnalyzeLiftUseCase {
    private let engine = ValidationEngine()

    func run(liftType: LiftType, snapshots: [BiomechSnapshot]) -> ValidationResult {
        // TODO: Agregar agregación temporal, detección de fases y reglas por evento.
        guard let last = snapshots.last else {
            return ValidationResult(isValid: false, violations: [], notes: "Sin datos para analizar.")
        }
        return engine.validate(liftType: liftType, biomech: last)
    }
}
