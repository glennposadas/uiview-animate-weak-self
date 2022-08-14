//
//  VC2.swift
//  UIViewAnimateWeakSelfOrNot
//
//  Created by Glenn Posadas on 8/14/22.
//

import UIKit

class VC2: UIViewController {
  
  var someObj: String! {
    didSet {
      print("set someobj: \(self.someObj)")
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    
  }

  deinit {
    print("deinit VC2 ✅✅✅✅✅")
  }
  
  @IBAction func tapped(_ sender: UIButton) {
    
    print("Tapped!")

    UIView.animate(withDuration: 5,
                   delay: 0,
                   options: .autoreverse) {
      print("Animating...")
      
      self.someObj = "ANimating...."
      
      let radians = 180 / 180.0 * CGFloat.pi
      let rotation = sender.transform.rotated(by: radians);
      sender.transform = rotation
    } completion: { finished in
      if finished {
        print("finished")
      } else {
        print("not yet or didn't finish...")
      }
    }

    
  }
  
  
}

