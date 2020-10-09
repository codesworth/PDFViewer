//
//  PDFView.swift
//  PDFViewer
//
//  Created by OZE-Shadrach on 10/9/20.
//

import SwiftUI
import PDFKit

struct PDFView:UIViewRepresentable{

    typealias UIViewType = PDFKit.PDFView
    @Binding var document:PDFViewerDocument

    func makeUIView(context: Context) -> UIViewType {
        UIViewType(frame: .zero)
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.document = document.referenceDocument
    }


}
