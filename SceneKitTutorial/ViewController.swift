//
//  ViewController.swift
//  SceneKitTutorial
//
//  Created by Cenker Demir on 7/22/16.
//  Copyright © 2016 Cenker Demir. All rights reserved.
//

import UIKit
import SceneKit

class ViewController: UIViewController {
    
    var scnView = SCNView()
    var primScn = PrimitivesScene()
    let swipeRecognizer = UISwipeGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        scnView = self.view as! SCNView
        
        scnView.scene = primScn
        
        swipeRecognizer.direction = UISwipeGestureRecognizerDirection.Up
        swipeRecognizer.addTarget(self, action: #selector(sceneSwiped))
        scnView.addGestureRecognizer(swipeRecognizer)
        
        
        //scnView.backgroundColor = UIColor.lightGrayColor()
        //scnView.autoenablesDefaultLighting = true
        //scnView.allowsCameraControl = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sceneSwiped(recognizer: UISwipeGestureRecognizer) {
        print("swiped up!")
        primScn.shootTheBall(primScn.sphereNode)
    }
}

