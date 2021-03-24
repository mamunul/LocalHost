//
//  MainPresenter.swift
//  WebClip
//
//  Created by Mamunul Mazid on 3/10/21.
//

import Foundation
import Photos

class MainPresenter {
    let localhost = LocalhostManager()
    let fileHandler = FileHandler()

    func openLinkInSafari() {
        if let path = fileHandler.filePath {
            localhost.openFileinBrowser(filePath: path.path)
        }
    }
}
