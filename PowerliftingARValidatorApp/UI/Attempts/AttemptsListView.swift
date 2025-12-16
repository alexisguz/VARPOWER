import SwiftUI

struct AttemptsListView: View {
    // TODO: Conectar a Core Data (FetchRequest) o repositorio
    private let demoItems: [String] = [
        "Sentadilla - Válido - 200 kg",
        "Banca - Nulo - 140 kg",
        "Peso muerto - Válido - 240 kg"
    ]

    var body: some View {
        List {
            if demoItems.isEmpty {
                EmptyStateView(
                    title: "Sin intentos",
                    subtitle: "Aún no registraste intentos. Creá uno nuevo para comenzar."
                )
            } else {
                ForEach(demoItems, id: \.self) { item in
                    NavigationLink(destination: AttemptDetailView(title: item)) {
                        Text(item)
                    }
                }
            }
        }
        .navigationTitle("Intentos")
    }
}
