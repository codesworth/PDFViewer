//
//  PDFViewerDocument.swift
//  PDFViewer
//
//  Created by OZE-Shadrach on 10/9/20.
//

import SwiftUI
import UniformTypeIdentifiers
import PDFKit


struct PDFViewerDocument: FileDocument {
    var referenceDocument:PDFDocument

    init(data: Data = blankData()) {
        self.referenceDocument = PDFDocument(data: data)!
    }

    static var readableContentTypes: [UTType] { [.pdf] }

    init(configuration: ReadConfiguration) throws {
        guard let data = configuration.file.regularFileContents
        else {
            throw CocoaError(.fileReadCorruptFile)
        }
        self.referenceDocument = PDFDocument(data: data)!
    }
    
    func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        return .init(regularFileWithContents: Data())
    }

}

func blankData()->Data{
    let renderer = UIGraphicsPDFRenderer(bounds:UIScreen.main.bounds, format:UIGraphicsPDFRendererFormat())
    return renderer.pdfData{$0.beginPage()}
}
