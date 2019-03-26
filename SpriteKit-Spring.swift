////////////////////////////////////////////////////////////////////////////////////////////////////
//  Copyright 2014 Alexis Taugeron
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
////////////////////////////////////////////////////////////////////////////////////////////////////

import SpriteKit

////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Move

@objc public extension SKAction {
    class func move(by delta: CGVector, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        let moveByX = self.animate(keyPath: \SKNode.position.x, byValue: delta.dx, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let moveByY = self.animate(keyPath: \SKNode.position.y, byValue: delta.dy, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        return .group([moveByX, moveByY])
    }
    
    class func move(to location: CGPoint, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        let moveToX = self.animate(keyPath: \SKNode.position.x, toValue: location.x, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let moveToY = self.animate(keyPath: \SKNode.position.y, toValue: location.y, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        return .group([moveToX, moveToY])
    }
    
    class func moveBy(x deltaX: CGFloat, y deltaY: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        let moveByX = self.animate(keyPath: \SKNode.position.x, byValue: deltaX, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let moveByY = self.animate(keyPath: \SKNode.position.y, byValue: deltaY, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        
        return .group([moveByX, moveByY])
    }
    
    class func moveTo(x: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        return self.animate(keyPath: \SKNode.position.x, toValue: x, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    class func moveTo(y: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        return self.animate(keyPath: \SKNode.position.y, toValue: y, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Rotate

@objc public extension SKAction {
    class func rotate(byAngle radians: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        return self.animate(keyPath: \SKNode.zRotation, byValue: radians, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    class func rotate(toAngle radians: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        return self.animate(keyPath: \SKNode.zRotation, toValue: radians, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Speed

@objc public extension SKAction {
    class func speed(by speed: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        return self.animate(keyPath: \SKNode.speed, byValue: speed, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    class func speed(to speed: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        return self.animate(keyPath: \SKNode.speed, toValue: speed, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Scale

public extension SKAction {
    class func scale(by scale: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        return self.scaleX(by: scale, y: scale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    class func scale(to scale: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        return self.scaleX(to: scale, y: scale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    class func scaleX(by xScale: CGFloat, y yScale: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        let scaleXBy = self.animate(keyPath: \SKNode.xScale, byValue: xScale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let scaleYBy = self.animate(keyPath: \SKNode.yScale, byValue: yScale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        return .group([scaleXBy, scaleYBy])
    }
    
    class func scaleX(to scale: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        return self.animate(keyPath: \SKNode.xScale, toValue: scale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    class func scaleY(to scale: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        return self.animate(keyPath: \SKNode.yScale, toValue: scale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    class func scaleX(to xScale: CGFloat, y yScale: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        let scaleXTo = self.scaleX(to: xScale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let scaleYTo = self.scaleY(to: yScale, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        return .group([scaleXTo, scaleYTo])
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Fade

public extension SKAction {
    class func fadeIn(withDuration duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        return self.animate(keyPath: \SKNode.alpha, toValue: 1, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    class func fadeOut(withDuration duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        return self.animate(keyPath: \SKNode.alpha, toValue: 0, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    class func fadeAlpha(by factor: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        return self.animate(keyPath: \SKNode.alpha, byValue: factor, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    class func fadeAlpha(to factor: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        return self.animate(keyPath: \SKNode.alpha, toValue: factor, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Resize

@objc public extension SKAction {
    class func resize(toWidth width: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        return self.animate(keyPath: \SKSpriteNode.size.width, toValue: width, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    class func resize(toHeight height: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        return self.animate(keyPath: \SKSpriteNode.size.height, toValue: height, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    class func resize(byWidth width: CGFloat, height: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        let resizeByWidth = self.animate(keyPath: \SKSpriteNode.size.width, byValue: width, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let resizeByHeight = self.animate(keyPath: \SKSpriteNode.size.height, byValue: height, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        return .group([resizeByWidth, resizeByHeight])
    }
    
    class func resize(toWidth width: CGFloat, height: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        let resizeToWidth = self.resize(toWidth: width, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        let resizeToHeight = self.resize(toHeight: height, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
        return .group([resizeToWidth, resizeToHeight])
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: Colorize

@objc public extension SKAction {
    class func colorize(withColorBlendFactor colorBlendFactor: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        return self.animate(keyPath: \SKSpriteNode.colorBlendFactor, toValue: colorBlendFactor, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: - Damping Logic

private extension SKAction {
    class func animate<T>(keyPath: ReferenceWritableKeyPath<T, CGFloat>, byValue initialDistance: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        return self.animate(_keyPath: keyPath, byValue: initialDistance, toValue: nil, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    class func animate<T>(keyPath: ReferenceWritableKeyPath<T, CGFloat>, toValue finalValue: CGFloat, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        return self.animate(_keyPath: keyPath, byValue: nil, toValue: finalValue, duration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity)
    }
    
    class func animate<T>(_keyPath: ReferenceWritableKeyPath<T, CGFloat>, byValue: CGFloat!, toValue: CGFloat!, duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat) -> SKAction {
        
        var initialValue: CGFloat!
        var naturalFrequency: CGFloat = 0
        var dampedFrequency: CGFloat = 0
        var t1: CGFloat = 0
        var t2: CGFloat = 0
        var A: CGFloat = 0
        var B: CGFloat = 0
        var finalValue: CGFloat! = toValue
        var initialDistance: CGFloat! = byValue
        
        let animation: SKAction = .customAction(withDuration: duration, actionBlock: { (node, elapsedTime) in
            guard let propertyToAnimation = node as? T else { return }
            if initialValue == nil {
                initialValue = propertyToAnimation[keyPath: _keyPath]
                initialDistance = initialDistance ?? finalValue - initialValue!
                finalValue = finalValue ?? initialValue! + initialDistance
                
                let magicNumber: CGFloat // picked manually to visually match the behavior of UIKit
                switch dampingRatio {
                case 1: magicNumber = 10
                case ..<1: magicNumber = 8 / dampingRatio
                default: magicNumber = 12 * dampingRatio
                }
                
                naturalFrequency = magicNumber / CGFloat(duration)
                dampedFrequency = naturalFrequency * sqrt(1 - pow(dampingRatio, 2))
                t1 = 1 / (naturalFrequency * (dampingRatio - sqrt(pow(dampingRatio, 2) - 1)))
                t2 = 1 / (naturalFrequency * (dampingRatio + sqrt(pow(dampingRatio, 2) - 1)))
                
                switch dampingRatio {
                case 1:
                    A = initialDistance
                    B = (naturalFrequency - velocity) * initialDistance
                case ..<1:
                    A = initialDistance
                    B = (dampingRatio * naturalFrequency - velocity) * initialDistance / dampedFrequency
                default:
                    A = (t1 * t2 / (t1 - t2))
                    A *= initialDistance * (1 / t2 - velocity)
                    B = (t1 * t2 / (t2 - t1))
                    B *= initialDistance * (1 / t1 - velocity)
                }
            }
            
            let currentValue: CGFloat
            
            if elapsedTime < CGFloat(duration) {
                switch dampingRatio {
                case 1:
                    let dampingExp: CGFloat = exp(-dampingRatio * naturalFrequency * elapsedTime)
                    currentValue = finalValue - dampingExp * (A + B * elapsedTime)
                case ..<1:
                    let dampingExp: CGFloat = exp(-dampingRatio * naturalFrequency * elapsedTime)
                    let ADamp: CGFloat = A * cos(dampedFrequency * elapsedTime)
                    let BDamp: CGFloat = B * sin(dampedFrequency * elapsedTime)
                    currentValue = finalValue - dampingExp * (ADamp + BDamp)
                default:
                    let ADamp:CGFloat =  A * exp(-elapsedTime/t1)
                    let BDamp:CGFloat = B * exp(-elapsedTime/t2)
                    currentValue = finalValue - ADamp - BDamp
                }
            } else {
                currentValue = finalValue
            }
            
            propertyToAnimation[keyPath: _keyPath] = currentValue
        })
        
        return .sequence([.wait(forDuration: delay), animation])
    }
}

