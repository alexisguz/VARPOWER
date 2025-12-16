import Foundation
import CoreData

final class AttemptsRepository {
    private let context: NSManagedObjectContext

    init(context: NSManagedObjectContext) {
        self.context = context
    }

    // TODO: Definir entidad Attempt en el modelo Core Data y persistir:
    // - liftType, date, videoURL/localId, isValid, violations, metrics, etc.
}
