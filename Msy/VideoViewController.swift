//
//  ViewController.swift
//  Msy
//
//  Created by Özenç Çelik on 1.01.2019.
//  Copyright © 2019 Özenç Çelik. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class VideoViewController: UIViewController {

    @IBAction func logInButton(_ sender: Any) {
    }
    
    @IBAction func instructionsButton(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playVideo()
    }
    
    private func makeButtonsRoundedAndtransparent(){
        
    }
    
    private func playVideo() {
        guard let path = Bundle.main.path(forResource: "test", ofType:"mp4") else {
            debugPrint("timelapse.mp4 not found")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
            playerController.player?.play()
        }
    }
    
    


}

