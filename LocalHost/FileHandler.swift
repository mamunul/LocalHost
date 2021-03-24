//
//  FileHandler.swift
//  WebClip
//
//  Created by Mamunul Mazid on 3/10/21.
//

import Foundation

class FileHandler {
    var filePath: URL?

    init() {
        filePath = getDocumentsDirectory().appendingPathComponent("Sample.text")
        writeSampleString()
    }

    func writeSampleString() {
        let sampleString = "This is sample string."

        let data = sampleString.data(using: String.Encoding.utf8)

        guard let fileUrl = filePath else { return }
        do {
            try data?.write(to: fileUrl)
        } catch {
            print(error)
        }
    }

    private func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
