//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Juan Gomez on 26/07/15.
//  Copyright (c) 2015 Codes and Tags. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var rps_image: UIImageView!
    var options = ["rock.jpg", "paper.jpg", "scissors.jpg"]
    var image :String = String()
    override func viewDidLoad() {
        super.viewDidLoad()        
    }
    
    func shakeGame(){
        var random = Int(arc4random_uniform(UInt32(options.count)))
        image = options[random]
    }
    
    
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
        if event.subtype == UIEventSubtype.MotionShake{
            shakeGame()
            rps_image.image = UIImage(named: image)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

