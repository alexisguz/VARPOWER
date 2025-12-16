import Foundation
import Vision
import CoreVideo

final class PoseDetector {
    private let request = VNDetectHumanBodyPoseRequest()

    func process(pixelBuffer: CVPixelBuffer, completion: @escaping (Result<VNHumanBodyPoseObservation, Error>) -> Void) {
        let handler = VNImageRequestHandler(cvPixelBuffer: pixelBuffer, orientation: .right, options: [:])

        DispatchQueue.global(qos: .userInitiated).async {
            do {
                try handler.perform([self.request])
                guard let obs = self.request.results?.first else {
                    completion(.failure(NSError(domain: "PoseDetector", code: 0)))
                    return
                }
                completion(.success(obs))
            } catch {
                completion(.failure(error))
            }
        }
    }
}
