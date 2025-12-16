import Foundation

enum AppLog {
    static func info(_ msg: String) { print("ℹ️ [INFO] \(msg)") }
    static func warn(_ msg: String) { print("⚠️ [WARN] \(msg)") }
    static func error(_ msg: String) { print("🛑 [ERROR] \(msg)") }
}
