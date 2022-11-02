//
//  SplashScreenView.swift
//  YouTube TV Client (universal)
//
//  Created by Andreas Rittsel on 02.11.22.
//  Copyright © 2022 Microgam.es. All rights reserved.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    // Customise your SplashScreen here
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image(systemName: "play.fill")
                        .font(.system(size: 80))
                        .foregroundColor(.red)
                    Text("YouTube TV Client by Microgam.es")
                        .font(Font.custom("Ubuntu-Bold", size: 26))
                        .foregroundColor(.white.opacity(0.80))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
