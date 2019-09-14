//
//  ViewController.swift
//  Programmatic Auto Layout Constraints
//
//  Created by Carmel Braga on 9/13/19.
//  Copyright © 2019 Carmel Braga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView = UIImageView()
    let labelView = UILabel()
    var textView = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "lfa.jpg")
        imageView.contentMode = .top
        imageView.clipsToBounds = true
        view.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        labelView.text = "PAGE 220"
        labelView.contentMode = .scaleAspectFit
        labelView.textAlignment = .center
        labelView.font = UIFont (name: "Copperplate", size: 30)
        view.addSubview(labelView)
        
        labelView.translatesAutoresizingMaskIntoConstraints = false
        
        textView.text = "“When adults say, “Teenagers think they are invincible“ with that sly, stupid smile on their faces, they don't know how right they are. We need never be hopeless, because we can never be irreparably broken. We think that we are invincible because we are. We cannot be born, and we cannot die. Like all energy, we can only change shapes and sizes and manifestations. They forget that when they get old. They get scared of losing and failing. But that part of us greater than the sum of our parts cannot begin and cannot end, and so it cannot fail.”"
        textView.textAlignment = .center
        textView.contentMode = .scaleAspectFit
        textView.layer.backgroundColor = UIColor.black.cgColor
        textView.textColor = UIColor.white
        textView.font = UIFont (name: "Copperplate", size: 21)
        view.addSubview(textView)
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalTo: view.widthAnchor),
            imageView.heightAnchor.constraint(equalTo: view.heightAnchor),
            imageView.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 4.5),
            imageView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 0.0),
            imageView.trailingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 0.0),
            labelView.widthAnchor.constraint(equalTo:view.widthAnchor),
            labelView.heightAnchor.constraint(equalTo:view.heightAnchor),
            labelView.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 3.5),
            labelView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 0.0),
            labelView.trailingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 0.0),
            textView.widthAnchor.constraint(equalTo:view.widthAnchor),
            textView.heightAnchor.constraint(equalTo: view.heightAnchor),
            textView.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 65.0),
            textView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 0.0),
            textView.trailingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 0.0)
            ])
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
