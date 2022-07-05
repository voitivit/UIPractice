//
//  ViewController.swift
//  UIPractice
//
//  Created by emil kurbanov on 05.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let labelFirst: UILabel = {
        let labelFirst = UILabel()
        labelFirst.text = "Первый лейбл"
        labelFirst.translatesAutoresizingMaskIntoConstraints = false
        return labelFirst
    }()
    
    let labelNext: UILabel = {
        let labelNext = UILabel()
        labelNext.text = "Второй Лейбл"
        labelNext.translatesAutoresizingMaskIntoConstraints = false
        return labelNext
    }()
    
    let button: UIButton = {
        //Не забывать!
        let button = UIButton(type: .system)
        button.setTitle("Нажать", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(labelFirst)
        view.addSubview(labelNext)
        view.addSubview(button)
        
        setupLabelFirst()
        setupLabelNext()
        setupButton()
        buttonSetAction()
    }
    
    
    func setupLabelFirst() {
        labelFirst.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        labelFirst.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 20).isActive = true
        labelFirst.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        labelFirst.widthAnchor.constraint(equalTo: view.widthAnchor, constant: 1/2).isActive = true
        labelFirst.heightAnchor.constraint(equalToConstant: 40).isActive = true
        labelFirst.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
    }
    
    func setupLabelNext() {
        labelNext.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        labelNext.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 20).isActive = true
        labelNext.topAnchor.constraint(equalTo: labelFirst.bottomAnchor, constant: 50).isActive = true
        labelNext.widthAnchor.constraint(equalTo: view.widthAnchor, constant: 1/2).isActive = true
        labelNext.heightAnchor.constraint(equalToConstant: 40).isActive = true
        labelNext.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50).isActive = true
    }
    
    func setupButton() {
       
     
        button.topAnchor.constraint(equalTo: labelNext.bottomAnchor, constant: 40).isActive = true
        // button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100).isActive = true
         button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    func buttonSetAction() {
        button.addTarget(self, action: #selector(change), for: .touchUpInside)
    }
    
    @objc private func change() {
        labelFirst.text = "Нажал на firstLable"
        labelNext.text = "Нажал на labelNext"
    }

}

