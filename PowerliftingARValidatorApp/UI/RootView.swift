import SwiftUI

struct RootView: View {
    @State private var isLoggedIn = false

    var body: some View {
        NavigationStack {
            Group {
                if isLoggedIn {
                    HomeView(onLogout: { isLoggedIn = false })
                } else {
                    LoginView(onLoginSuccess: { isLoggedIn = true })
                }
            }
        }
    }
}
