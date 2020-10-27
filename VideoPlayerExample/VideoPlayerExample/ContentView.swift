//
//  ContentView.swift
//  VideoPlayerExample
//
//  Created by Nitin Bhatt on 10/25/20.
//

import SwiftUI
import CoreData
import AVKit


struct ContentView: View {
    var body: some View {
        GeometryReader{ geometry in
            VStack{
                moviePlayer()//.frame(width: geometry.size.width, height: 280)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct moviePlayer:UIViewControllerRepresentable{
    
    let path = Bundle.main.path(forResource: "test_video1", ofType:"mov")

    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
    }
    
    func makeUIViewController(context: Context) -> UIViewController {
        let controller = AVPlayerViewController()
        let url = NSURL(fileURLWithPath: path!)
        let player = AVPlayer(url:url as URL)
        controller.player = player
        return controller
    }
    
    typealias UIViewControllerType = UIViewController
}
