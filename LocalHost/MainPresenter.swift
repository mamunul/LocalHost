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

    private var filePath: URL?


    func openLinkInSafari() {
        if let path = filePath?.path {
            localhost.openFileinBrowser(filePath: path)
        }
    }
}
