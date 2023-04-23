//
//  ARQuickLook.swift
//  Telephony
//
//  Created by Roman Indermühle on 07.04.23.
//

import SwiftUI
import QuickLook
import RealityKit
import ARKit

struct SIPGuide: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        return UINavigationController.init(rootViewController: ViewController())
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}

class ViewController: UIViewController, QLPreviewControllerDataSource {
    var isAppeard: Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            let previewController = QLPreviewController()
            previewController.dataSource = self
            self.present(previewController, animated: true, completion: nil)
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        guard !isAppeard else { return }
        isAppeard = true
        
    }
    func numberOfPreviewItems(in controller: QLPreviewController) -> Int { return 1 }
    func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
        guard let path = Bundle.main.path(forResource: "SIPGuide", ofType: "reality") else { fatalError("Couldn't find the supported input file.") }
        return URL(fileURLWithPath: path) as QLPreviewItem
        
    }
}


