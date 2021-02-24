//
//  LazyView.swift
//  Instagram
//
//  Created by Felipe Vallejo on 2/23/21.
//

import SwiftUI

struct LazyView<Content: View>: View {
    let build: () -> Content
    
    init(_ build: @autoclosure @escaping() -> Content) {
        self.build = build
    }
    
    var body: Content {
        build()
    }
    
}
