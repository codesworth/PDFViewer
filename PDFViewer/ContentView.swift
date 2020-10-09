//
//  ContentView.swift
//  PDFViewer
//
//  Created by OZE-Shadrach on 10/9/20.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: PDFViewerDocument

    var body: some View {
        PDFView(document: $document)
    }
}

