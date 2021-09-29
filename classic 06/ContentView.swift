//
//  ContentView.swift
//  classic 06
//
//  Created by 暨大附中 on 2021/9/24.
//
import AVKit
import SwiftUI

let url=URL (string: "")!
struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                VideoPlayer(player: AVPlayer(url:url))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

























