import SwiftUI

struct NewAttemptView: View {
    @State private var selected: LiftType = .squat
    @State private var showCamera = false

    var body: some View {
        VStack(spacing: 16) {
            Text("Nuevo intento")
                .font(.title)
                .bold()

            Picker("Movimiento", selection: $selected) {
                ForEach(LiftType.allCases, id: \.self) { t in
                    Text(t.displayName).tag(t)
                }
            }
            .pickerStyle(.segmented)

            PrimaryButton(title: "Grabar en vivo (AR)") { showCamera = true }
                .sheet(isPresented: $showCamera) {
                    ARCameraView(liftType: selected)
                }

            PrimaryButton(title: "Importar video") {
                // TODO: Integrar PhotosPicker / FileImporter
            }

            Spacer()
        }
        .padding()
    }
}
