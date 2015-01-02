//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Jason Damiani on 1/2/15.
//  Copyright (c) 2015 Jason Damiani. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if var path = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
            var filePathURL = NSURL.fileURLWithPath(path)
            audioPlayer = AVAudioPlayer(contentsOfURL: filePathURL, error: nil)
            audioPlayer.enableRate = true
        } else {
            println("the filepath is empty")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playAudio(rate: Float) {
        audioPlayer.stop()
        audioPlayer.rate = rate
        audioPlayer.currentTime = 0
        audioPlayer.play()
    }
    
    @IBAction func playSlowly(sender: UIButton) {
        self.playAudio(0.5)
    }

    @IBAction func playQuickly(sender: UIButton) {
        self.playAudio(1.5)
    }
    
    @IBAction func stopPlayback(sender: UIButton) {
        audioPlayer.stop()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
