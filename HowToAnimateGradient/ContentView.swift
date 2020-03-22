//
//  ContentView.swift
//  HowToAnimateGradient
//
//  Created by Ramill Ibragimov on 22.03.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var movePoints = false
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.black, Color.blue, Color.white, Color.blue]), startPoint: .bottom, endPoint: self.movePoints ? .topLeading : .topTrailing)
            .edgesIgnoringSafeArea(.all)
            .animation(Animation.easeInOut(duration: 2).delay(0.5).repeatForever(autoreverses: true))
            .onAppear() {
                self.movePoints.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
