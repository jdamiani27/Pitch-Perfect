//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Jason Damiani on 1/2/15.
//  Copyright (c) 2015 Jason Damiani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingInProgress: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        stopButton.hidden = true
        recordButton.enabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        recordButton.enabled = false
        stopButton.hidden = false
        recordingInProgress.hidden = false
        //TODO: Record the user's voice
        println("in recordAudio")
    }

    @IBAction func stopRecording(sender: UIButton) {
        recordingInProgress.hidden = true
        println("in stopRecording")
    }
}

