import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var message: String?

    var body: some View {
        VStack(spacing: 16) {
            Text("Registro")
                .font(.largeTitle)
                .bold()

            TextField("Nombre", text: $name)
                .textFieldStyle(.roundedBorder)

            TextField("Email", text: $email)
                .textInputAutocapitalization(.never)
                .keyboardType(.emailAddress)
                .textFieldStyle(.roundedBorder)

            SecureField("Contraseña", text: $password)
                .textFieldStyle(.roundedBorder)

            SecureField("Confirmar contraseña", text: $confirmPassword)
                .textFieldStyle(.roundedBorder)

            if let message {
                Text(message).foregroundStyle(.secondary)
            }

            PrimaryButton(title: "Crear cuenta") {
                // TODO: Validaciones + persistencia / CloudKit
                guard !name.isEmpty, !email.isEmpty else {
                    message = "Completar nombre y email."
                    return
                }
                guard password == confirmPassword, !password.isEmpty else {
                    message = "Las contraseñas no coinciden."
                    return
                }
                message = "Cuenta creada (stub). Volvé al login."
            }

            Spacer()
        }
        .padding()
    }
}
