//
//  MetalversusBNNS.swift
//  MPSvsBNNS
//
//  Created by Brian Rouse on 9/2/17.
//  Copyright © 2017 Brian Rouse. All rights reserved.
//

import UIKit
import QuartzCore

func timeIT(_ block: () -> Void) -> CFTimeInterval {
    let startTime = CACurrentMediaTime()
    block()
    return CACurrentMediaTime() - startTime
}

protocol  Logger {
    func log(message: String)
}

class ViewController: UIViewController, Logger {

    
    
  @IBOutlet weak var textView: UITextView!

  override func viewDidLoad() {
    super.viewDidLoad()
     textView.text = ""
   
  }

  @IBAction func button1Tapped() {
    MetalVersusBNNS().run(logger: self)
  }

    func log(message: String) {
        let text = textView.text + message + "\n"
        textView.text = text
    }
   
    
    @IBAction func Reset(_ sender: UIButton) {
        textView.text = ""
    }
}
