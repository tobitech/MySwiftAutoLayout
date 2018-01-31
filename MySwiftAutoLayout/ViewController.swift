//
//  ViewController.swift
//  MySwiftAutoLayout
//
//  Created by Tobi Omotayo on 28/01/2018.
//  Copyright © 2018 Oluwatobi Omotayo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // let's avoid polluting viewDidLoad()
    // {} is referred to as closure, or annomymous function
    let bearImageView: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "bear_first"))
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Joing us today in our fun and games!"
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(bearImageView)
        view.addSubview(descriptionTextView)
        
        setupLayout()
    }
    
    private func setupLayout() {
        bearImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bearImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        bearImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        bearImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: bearImageView.bottomAnchor, constant: 120).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }
    
}

