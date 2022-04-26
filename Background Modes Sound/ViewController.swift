//
//  ViewController.swift
//  Background Modes Sound
//
//  Created by Ömer Faruk Kılıçaslan on 26.04.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var sesOynatici:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        do {
            let dosyaYolu = Bundle.main.path(forResource: "music", ofType: ".mp3")
            sesOynatici = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: dosyaYolu!))
            sesOynatici.prepareToPlay()
        } catch  {
            print(error.localizedDescription)
        }

    }

    @IBAction func start(_ sender: Any) {
        sesOynatici.play()
    }
    
    @IBAction func stop(_ sender: Any) {
        sesOynatici.stop()
    }
}

