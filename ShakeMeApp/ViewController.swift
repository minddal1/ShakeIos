//
//  ViewController.swift
//  ShakeMeApp
//
//  Created by admin on 24/04/2020.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    
    @IBOutlet weak var xMotion: UITextField!
    @IBOutlet weak var yMotion: UITextField!
    @IBOutlet weak var zMotion: UITextField!
    
    var motion = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myDeviceMotion()
        randomBackgroundColor()
        
    }
    
    func myDeviceMotion() {
        print("now running")
        motion.deviceMotionUpdateInterval = 0.5
        motion.startDeviceMotionUpdates(to: OperationQueue.current!) { (data, error) in
            print(data as Any)
            if let trueData = data {
                self.view.reloadInputViews()
                let mPitch = trueData.attitude.pitch
                let mRoll = trueData.attitude.roll
                let mYaw = trueData.attitude.yaw
                self.xMotion.text = "Pitch : \(Double(mPitch))"
                self.zMotion.text = "yaw : \(Double(mRoll))"
                self.yMotion.text = "roll : \(Double(mYaw))"
            }
        }
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        UIView.animate(withDuration: 0.4) {
            self.randomBackgroundColor()
        }
    }

    func randomBackgroundColor() {
        view.backgroundColor = .random()
    }

}

