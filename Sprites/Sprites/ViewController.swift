//
//  ViewController.swift
//  Sprites
//
//  Created by Sammy Alvarado on 7/11/21.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    
    // MARK: Property
    var skScene: CustomScene? = nil
    
    // MARK: Outlets
    @IBOutlet var skView: SKView!
    
    // MARK: View
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skScene = CustomScene(size: view.bounds.size)
        skView.presentScene(skScene)
    }
    
    // MARK: Actions:
    


}

