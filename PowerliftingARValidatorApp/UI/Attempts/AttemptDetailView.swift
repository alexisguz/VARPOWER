import SwiftUI

struct AttemptDetailView: View {
    let title: String

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Detalle del intento")
                .font(.title2)
                .bold()

            Text(title)
                .font(.headline)

            Text("Resultado / feedback (stub)")
                .foregroundStyle(.secondary)

            // TODO: Mostrar video, overlay, métricas y violaciones de reglas.
            Spacer()
        }
        .padding()
    }
}
