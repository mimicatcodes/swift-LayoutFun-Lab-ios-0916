//
//  ViewController.swift
//  LayoutFun
//
//  Created by James Campagno on 8/31/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    let redView = UIView(frame: CGRect.zero)
    let orangeView = UIView(frame: CGRect.zero)
    let yellowView = UIView(frame: CGRect.zero)
    let greenView = UIView(frame: CGRect.zero)
    let blueView = UIView(frame: CGRect.zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.gray
        turnOffAutoResizingOnAllViews()
        // .translatesAutoresizingMaskIntoConstraints = false
        setupTheConstraints()
        setupColors()
    }
    
}

// MARK: Constraints
extension ViewController {
    
    func setupTheConstraints() {
        // TODO: Create all the constraints (in code) for the various views

        //redView
        redView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true
        redView.heightAnchor.constraint(equalTo: self.redView.widthAnchor).isActive = true
        redView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        redView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        //orangeView
        orangeView.widthAnchor.constraint(equalTo: self.redView.widthAnchor, multiplier: 0.75).isActive = true
        orangeView.heightAnchor.constraint(equalTo: self.orangeView.widthAnchor).isActive = true
        orangeView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        orangeView.bottomAnchor.constraint(equalTo: self.redView.topAnchor).isActive = true

        // Yellow, green, blue
        
        yellowView.widthAnchor.constraint(equalTo: self.orangeView.widthAnchor, multiplier: 0.75).isActive = true
        yellowView.heightAnchor.constraint(equalTo: self.yellowView.widthAnchor).isActive = true
        yellowView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        yellowView.bottomAnchor.constraint(equalTo: self.orangeView.topAnchor).isActive = true
        
        greenView.widthAnchor.constraint(equalTo: self.yellowView.widthAnchor, multiplier: 0.75).isActive = true
        greenView.heightAnchor.constraint(equalTo: self.greenView.widthAnchor).isActive = true
        greenView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        greenView.bottomAnchor.constraint(equalTo: self.yellowView.topAnchor).isActive = true
        
        blueView.widthAnchor.constraint(equalTo: self.greenView.widthAnchor, multiplier: 0.75).isActive = true
        blueView.heightAnchor.constraint(equalTo: self.blueView.widthAnchor).isActive = true
        blueView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        blueView.bottomAnchor.constraint(equalTo: self.greenView.topAnchor).isActive = true


    
        
        
    }
    
    func turnOffAutoResizingOnAllViews() {
        [redView, orangeView, yellowView, greenView, blueView].forEach { colorView in
            colorView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(colorView)
        }
    }
    
}


// MARK: Setting up Views
extension ViewController {
    
    func setupColors() {
        redView.backgroundColor = UIColor.red
        orangeView.backgroundColor = UIColor.orange
        yellowView.backgroundColor = UIColor.yellow
        greenView.backgroundColor = UIColor.green
        blueView.backgroundColor = UIColor.blue
    }
}
