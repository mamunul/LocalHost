//
//  LocalhostManager.swift
//  WebClip
//
//  Created by Mamunul Mazid on 3/10/21.
//

import Foundation
import GCDWebServer

class LocalhostManager {
    var webServer: GCDWebServer?
    func openFileinBrowser(filePath: String) {
        webServer = GCDWebServer()

        webServer!.addDefaultHandler(forMethod: "GET", request: GCDWebServerRequest.self) { (_) -> GCDWebServerResponse? in
            GCDWebServerFileResponse(file: filePath, isAttachment: true)
        }

        if webServer!.start() {
            let urlString = "\(webServer!.serverURL!)Sample.text"
            if let link = URL(string: urlString) {
                UIApplication.shared.open(link)
            }

        } else {
        }
    }
}
