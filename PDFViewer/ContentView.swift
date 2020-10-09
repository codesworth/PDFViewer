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
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(PDFViewerDocument()))
    }
}
