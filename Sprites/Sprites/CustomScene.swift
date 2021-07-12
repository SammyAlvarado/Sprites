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
        
        let node = SKShapeNode(circleOfRadius: 8)
        node.fillColor = randomUIColor()
        node.position = touch.location(in: self)
    
        
        let zoomIn = SKAction.scale(by: 2.0, duration: 1)
        let zoomOut = SKAction.scale(by: 0.8, duration: 0.5)
//        let dismiss = SKAction.removeFromParent()
        let zoomInZoomOUt = SKAction.sequence([zoomIn, zoomOut])
        node.run(zoomInZoomOUt)
        
        
        
        addChild(node)
        
    }
    
    private func randomColor() -> UIColor {
        let red: CGFloat = CGFloat(drand48())
        let green: CGFloat = CGFloat(drand48())
        let blue: CGFloat = CGFloat(drand48())
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    private func randomUIColor() -> UIColor {
        return .init(hue: .random(in: 0.5...1.0),
                     saturation: 1,
                     brightness: 1,
                     alpha: 1)
    }
}

