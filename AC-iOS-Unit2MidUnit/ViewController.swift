//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    var pMonologue = PoloniusMonologueModel()
    var romeoAndJulieta = RomeoAndJulietModel()
    
    lazy var lblTitle: UILabel = {
        let label = UILabel(frame: CGRect.zero)
        label.text = "Polonius Monologue"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textAlignment = .center
        return label
    }()
    
    lazy var lblSubTitle: UILabel = {
        let label = UILabel(frame: CGRect.zero)
        label.text = "Romeo And Juliet: Scene IV"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.textAlignment = .center
        return label
    }()
    
    lazy var lblDisplayText: UILabel = {
        let label = UILabel(frame: CGRect.zero)
        label.text = " "
        label.textAlignment = .center
        return label
    }()
    
    lazy var lblUserInput: UITextField = {
        let textField = UITextField(frame: CGRect.zero)
        textField.placeholder = "Enter Romeo, Benvolio, or Mercutio"
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var lblInvalidMessage: UILabel = {
        let label = UILabel(frame: CGRect.zero)
        label.text = "Invalid message"
        label.textColor = .red
        label.textAlignment = .center
        return label
    }()
    
    lazy var btnNextLine: UIButton = {
        let button = UIButton(frame: CGRect.zero)
        button.setTitle("Next Line", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(btnNextText), for: .touchUpInside)
        return button
    }()
    
    lazy var txtViewDisplayMessage: UITextView = {
        let textView = UITextView(frame: CGRect.zero)
        
        textView.textAlignment = .justified
        return textView
    }()
    
    @objc func btnNextText() {
        lblDisplayText.text = pMonologue.getSentenceLine()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        lblInvalidMessage.isHidden = true
        addSubviews()
        setupConstrain()
        self.view.backgroundColor = .white
        lblUserInput.delegate = self
        txtViewDisplayMessage.backgroundColor = .yellow
    }
    
    func addSubviews() {
        self.view.addSubview(lblTitle)
        self.view.addSubview(lblSubTitle)
        self.view.addSubview(lblDisplayText)
        self.view.addSubview(lblUserInput)
        self.view.addSubview(btnNextLine)
        self.view.addSubview(lblInvalidMessage)
        self.view.addSubview(txtViewDisplayMessage)
        
    }
    
    func setupConstrain() {
        lblTitle.translatesAutoresizingMaskIntoConstraints = false
        lblTitle.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor).isActive = true
        lblTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lblTitle.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        
        lblDisplayText.translatesAutoresizingMaskIntoConstraints = false
        lblDisplayText.widthAnchor.constraint(equalTo: lblTitle.widthAnchor).isActive = true
        lblDisplayText.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lblDisplayText.topAnchor.constraint(equalTo: self.lblTitle.bottomAnchor, constant: 20).isActive = true
        
        btnNextLine.translatesAutoresizingMaskIntoConstraints = false
        btnNextLine.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btnNextLine.topAnchor.constraint(equalTo: lblDisplayText.bottomAnchor, constant: 30).isActive = true
        
        lblSubTitle.translatesAutoresizingMaskIntoConstraints = false
        lblSubTitle.widthAnchor.constraint(equalTo: lblDisplayText.widthAnchor).isActive = true
        lblSubTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lblSubTitle.topAnchor.constraint(equalTo: btnNextLine.bottomAnchor, constant: 20).isActive = true
        
        lblUserInput.translatesAutoresizingMaskIntoConstraints = false
        lblUserInput.widthAnchor.constraint(equalTo: lblSubTitle.widthAnchor).isActive = true
        lblUserInput.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lblUserInput.topAnchor.constraint(equalTo: lblSubTitle.bottomAnchor, constant: 20).isActive = true
        
        lblInvalidMessage.translatesAutoresizingMaskIntoConstraints = false
        lblInvalidMessage.widthAnchor.constraint(equalTo: lblUserInput.widthAnchor).isActive = true
        lblInvalidMessage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lblInvalidMessage.topAnchor.constraint(equalTo: lblUserInput.bottomAnchor, constant: 10).isActive = true
        
        txtViewDisplayMessage.translatesAutoresizingMaskIntoConstraints = false
        txtViewDisplayMessage.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor).isActive = true
        txtViewDisplayMessage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        txtViewDisplayMessage.topAnchor.constraint(equalTo: lblInvalidMessage.bottomAnchor, constant: 20).isActive = true
        txtViewDisplayMessage.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 50).isActive = true
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.text == "" {
            return false
        }
        let message = romeoAndJulieta.getMessage(word: textField.text).message
        if message == nil {
            lblInvalidMessage.isHidden = false
            lblUserInput.text = ""
            txtViewDisplayMessage.text = ""
        } else {
            lblInvalidMessage.isHidden = true
            txtViewDisplayMessage.text = message
            lblUserInput.text = ""
        }
        return true
    }
}

