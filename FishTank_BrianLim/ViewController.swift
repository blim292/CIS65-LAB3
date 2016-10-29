//
//  ViewController.swift
//  FishTank_BrianLim
//
//  Created by Brian Lim on 10/28/16.
//  Copyright © 2016 Brian Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var TrueOrFalse = true
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "fishtank_background")!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func animate(sender: AnyObject) {
    
        
        // set crab
        let xStartCB = 0
        let yStartCB = 670
        let wStartCB = 50
        let hStartCB = 50
        let xEndCB = 320
//        let yEnd = 568
        
        let redCrab1 = UIImageView()
        redCrab1.image = UIImage(named: "red_crab1")
        redCrab1.frame = CGRect(x: xStartCB, y: yStartCB, width: wStartCB, height: hStartCB)
        self.view.addSubview(redCrab1)
        
        let c1Duration = NSTimeInterval(Float((random() % 5) + 1))
        let c1Delay = NSTimeInterval(Float((random() % 3) + 8)) / 10.0
        
        UIView.animateWithDuration(c1Duration, delay: c1Delay, options: [.Repeat, .Autoreverse, .CurveEaseInOut], animations: {
            redCrab1.frame = CGRect(x: xEndCB-xStartCB, y: yStartCB, width: wStartCB, height:hStartCB)
            }, completion: { animationFinished in redCrab1.removeFromSuperview();}
            )
    
    
        // set turtle
        let xStartTurt = 0
        let yStartTurt = 600
        let wStartTurt = 100
        let hStartTurt = 100
      
    
        let turtle = UIImageView()
        turtle.image = UIImage(named: "Turtle")
        turtle.frame = CGRect(x: xStartTurt, y: yStartTurt, width: wStartTurt, height: hStartTurt)
        self.view.addSubview(turtle)
        
        
        let path = UIBezierPath()
        path.moveToPoint(CGPoint(x: 16, y: 550))
        path.addCurveToPoint(CGPoint(x: 301, y: 550), controlPoint1: CGPoint(x: 136, y: 500), controlPoint2: CGPoint(x: 178, y: 550))
        
        // create a new CAKeyframeAnimation that animates the objects position
        let anim = CAKeyframeAnimation(keyPath: "position")
        
        // set the animations path to our bezier curve
        anim.path = path.CGPath
        
        // set some more parameters for the animation
        // this rotation mode means that our object will rotate so that it's parallel to whatever point it is currently on the curve
        anim.rotationMode = kCAAnimationRotateAuto
        anim.repeatCount = Float.infinity
        anim.duration = 5.0
        
        // we add the animation to the squares 'layer' property
        turtle.layer.addAnimation(anim, forKey: "animate position along path")
        
        
        // set FishGoRight
        let xStartFish1 = 0
        let yStartFish1 = 300
        let wStartFish1 = 75
        let hStartFish1 = 75
        let xEndFish1 = 320
        
        
        // fishGoRight
        let fishGoRight = UIImageView()
        fishGoRight.image = UIImage(named: "fishGoRight")
        fishGoRight.frame = CGRect(x: xStartFish1, y: yStartFish1, width: wStartFish1, height: hStartFish1)
        self.view.addSubview(fishGoRight)
        
        UIView.animateWithDuration(c1Duration, delay: c1Delay, options: [.CurveEaseInOut], animations: {
            fishGoRight.frame = CGRect(x: xEndFish1-xStartFish1, y: yStartFish1, width: wStartFish1, height:hStartFish1)
            }, completion: { animationFinished in fishGoRight.removeFromSuperview();}
        )
        
//        // set fishGoLeft
//        let xStartFish2 = 320
//        let yStartFish2 = yStartFish1
//        let wStartFish2 = wStartFish1
//        let hStartFish2 = hStartFish1
//        let xEndFish2 = 100
//        
//        // FishGOLeft
//        let fishGoLeft = UIImageView()
//        fishGoLeft.image = UIImage(named: "fishGoLeft")
//        fishGoLeft.frame = CGRect(x: xStartFish2, y: yStartFish2, width: wStartFish2, height: hStartFish2)
//        self.view.addSubview(fishGoLeft)
//        
//        UIView.animateWithDuration(c1Duration, delay: c1Delay, options: [.CurveEaseInOut], animations: {
//            fishGoLeft.frame = CGRect(x: xEndFish2-xStartFish2, y: yStartFish2, width: wStartFish2, height:hStartFish2)
//            }, completion: { animationFinished in fishGoLeft.removeFromSuperview();}
//        )
//
    }
}