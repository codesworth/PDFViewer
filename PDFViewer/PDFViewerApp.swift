//
//  PDFViewerApp.swift
//  PDFViewer
//
//  Created by OZE-Shadrach on 10/9/20.
//

import SwiftUI

@main
struct PDFViewerApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: PDFViewerDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
