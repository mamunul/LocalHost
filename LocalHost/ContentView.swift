//
//  ContentView.swift
//  WebClip
//
//  Created by Mamunul Mazid on 3/8/21.
//

import SwiftUI

let presenter = MainPresenter()

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                presenter.openLinkInSafari()
            } label: {
                Text("Download From Local Server")
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
