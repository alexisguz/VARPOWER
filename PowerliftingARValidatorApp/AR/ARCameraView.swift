import SwiftUI
import UIKit

struct ARCameraView: UIViewControllerRepresentable {
    let liftType: LiftType

    func makeUIViewController(context: Context) -> ARCameraViewController {
        let vc = ARCameraViewController()
        vc.liftType = liftType
        return vc
    }

    func updateUIViewController(_ uiViewController: ARCameraViewController, context: Context) {}
}
