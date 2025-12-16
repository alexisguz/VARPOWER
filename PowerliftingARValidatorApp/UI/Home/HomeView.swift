import SwiftUI

struct HomeView: View {
    let onLogout: () -> Void

    var body: some View {
        VStack(spacing: 16) {
            Text("Inicio")
                .font(.largeTitle)
                .bold()

            Text("Bienvenido/a. Desde aquí podés crear un nuevo intento o revisar el historial.")
                .multilineTextAlignment(.center)
                .foregroundStyle(.secondary)

            NavigationLink("Nuevo intento", destination: NewAttemptView())
                .buttonStyle(.borderedProminent)

            NavigationLink("Historial de intentos", destination: AttemptsListView())
                .buttonStyle(.bordered)

            PrimaryButton(title: "Cerrar sesión") {
                onLogout()
            }
            .padding(.top, 24)

            Spacer()
        }
        .padding()
    }
}
