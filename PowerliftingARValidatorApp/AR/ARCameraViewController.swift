import UIKit
import ARKit
import Vision

final class ARCameraViewController: UIViewController, ARSessionDelegate {
    var liftType: LiftType = .squat

    private let sceneView = ARSCNView()
    private let poseDetector = PoseDetector()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black

        sceneView.frame = view.bounds
        sceneView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(sceneView)

        sceneView.session.delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let config = ARWorldTrackingConfiguration()
        sceneView.session.run(config, options: [.resetTracking, .removeExistingAnchors])
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        sceneView.session.pause()
    }

    func session(_ session: ARSession, didUpdate frame: ARFrame) {
        poseDetector.process(pixelBuffer: frame.capturedImage) { result in
            switch result {
            case .success(let obs):
                // TODO: Convertir obs a puntos/ángulos y renderizar overlay.
                _ = obs
            case .failure:
                // TODO: Manejo de error/estado de tracking
                break
            }
        }
    }
}
