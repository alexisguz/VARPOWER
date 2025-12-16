import SwiftUI

struct LoginView: View {
    let onLoginSuccess: () -> Void

    @State private var email = ""
    @State private var password = ""
    @State private var error: String?

    var body: some View {
        VStack(spacing: 16) {
            Text("Login")
                .font(.largeTitle)
                .bold()

            TextField("Email", text: $email)
                .textInputAutocapitalization(.never)
                .keyboardType(.emailAddress)
                .textFieldStyle(.roundedBorder)

            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)

            if let error {
                Text(error).foregroundStyle(.red)
            }

            PrimaryButton(title: "Ingresar") {
                // TODO: Reemplazar por autenticación real (Keychain / CloudKit / etc.)
                guard !email.isEmpty, !password.isEmpty else {
                    error = "Completar email y contraseña."
                    return
                }
                error = nil
                onLoginSuccess()
            }

            NavigationLink("Crear cuenta", destination: RegisterView())
                .padding(.top, 8)
        }
        .padding()
    }
}
