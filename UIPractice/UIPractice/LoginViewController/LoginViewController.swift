//
//  LoginViewController.swift
//  UIPractice
//
//  Created by emil kurbanov on 07.07.2022.
//

import UIKit

class LoginViewController: UIViewController {
  
    let loginTextFields: UITextField = {
        let loginTextFields = UITextField()
        loginTextFields.placeholder = "введите логин"

        loginTextFields.translatesAutoresizingMaskIntoConstraints = false
        return loginTextFields
    }()
    
    let passwordTextFields: UITextField = {
        let passwordTextFields = UITextField()
        passwordTextFields.placeholder = "введите пароль"
        passwordTextFields.translatesAutoresizingMaskIntoConstraints = false
        return passwordTextFields
    }()
    
    let signIn: UIButton = {
        let signIn = UIButton(type: .system)
        signIn.setTitleColor(.white, for: .normal)
        signIn.setTitle("Sign In", for: .normal)
        signIn.backgroundColor = .red
        signIn.translatesAutoresizingMaskIntoConstraints = false
        return signIn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.addSubview(loginTextFields)
        view.addSubview(passwordTextFields)
        view.addSubview(signIn)
        
        setupConstraints()
        setAction()
        
    }
    func setupConstraints() {
        loginTextFields.topAnchor.constraint(equalTo: view.topAnchor, constant: 250).isActive = true
        loginTextFields.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        loginTextFields.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100).isActive = true
        
        passwordTextFields.topAnchor.constraint(equalTo: loginTextFields.bottomAnchor, constant: 30).isActive = true
        passwordTextFields.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        passwordTextFields.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100).isActive = true
        
        signIn.topAnchor.constraint(equalTo: passwordTextFields.bottomAnchor, constant: 90).isActive = true
        signIn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        signIn.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100).isActive = true
    }
    
    func setAction() {
        signIn.addTarget(self, action: #selector(setActionLogIN), for: .touchUpInside)
    }
    
    @objc private func setActionLogIN() {
        guard
            let login = loginTextFields.text,
            let password = passwordTextFields.text
        else { return }
        if login.isEmpty || password.isEmpty {
            let alert = UIAlertController(title: "Заполните все поля", message: "Пожалуйста, заполните все поля!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel))
            present(alert, animated: true, completion: nil)
        } else if login == "1" && password == "1" {
            performSegue(withIdentifier: "nextViewController", sender: nil)
        }
    }
    
}
