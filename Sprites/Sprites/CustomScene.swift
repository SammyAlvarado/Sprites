//
//  CustomScene.swift
//  Sprites
//
//  Created by Sammy Alvarado on 7/11/21.
//

import UIKit
import SpriteKit

class CustomScene: SKScene {
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first
            else { return }
        
        // Work with your touch here
    }
}

