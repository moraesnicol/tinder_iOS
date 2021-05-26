//
//  MatchVC.swift
//  Tinder
//
//  Created by Gabriel on 25/05/21.
//

import UIKit



class MatchVC: UIViewController {
    
    let fotoImageView: UIImageView = .fotoImageView(named: "char5" )
    let likeImageView: UIImageView = .fotoImageView(named: "icone-like")
    let mensagemLabel: UILabel = .textBoldLabel(18, textColor: .purple, numberOflines: 2)
    
    let mensagemTxt: UITextField = {
        let textField = UITextField()
        
   
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textField.placeholder = "Inicie a negociação"
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 8
        textField.textColor = .darkText
        textField.returnKeyType = .go
        
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 0 ))
        textField.leftViewMode = .always
        
        textField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0 ))
        textField.rightViewMode = .always
        
        
        
        
        return textField
}()
    
    
    let mensagemEnviarButton: UIButton = {
       let button = UIButton()
        button.setTitle("Enviar", for: .normal)
        button.setTitleColor(UIColor(red: 62/255, green: 163/255, blue: 255/255, alpha: 1), for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 16)
        
        
        return button
    }()
    
    let voltarButton: UIButton = {
       let button = UIButton()
        button.setTitle("Voltar ", for: .normal)
        button.setTitleColor(.darkGray, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        
        
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        mensagemLabel.text = "O dono(a) dessa carta também gostou da sua!"
        mensagemLabel.textAlignment = .center
        mensagemLabel.adicionaShadow()
        
        
        
        likeImageView.translatesAutoresizingMaskIntoConstraints = false
        likeImageView.heightAnchor.constraint(equalToConstant: 55).isActive = true
        likeImageView.contentMode = .scaleAspectFit
      
        mensagemTxt.addSubview(mensagemEnviarButton)
        mensagemEnviarButton.preencher(
            top: mensagemTxt.topAnchor,
            leading: nil,
            trailing: mensagemTxt.trailingAnchor,
            bottom: mensagemTxt.bottomAnchor,
            padding: .init(top: 0, left: 0, bottom: 0, right: 10)
        )
        
        
        view.addSubview(fotoImageView)
        fotoImageView.preencherSuperview()
        
        let stackView = UIStackView(arrangedSubviews: [   UIView(), likeImageView, UIView(), UIView(), UIView(), UIView(),  mensagemLabel, mensagemTxt, voltarButton])
        stackView.axis = .vertical
        stackView.spacing = 16
        
        
        view.addSubview(stackView)
        stackView.preencher(
            top: nil,
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            bottom: view.bottomAnchor,
            padding: .init(top: 10, left: 32, bottom: 46, right: 32)
        )
        
    
    }
}
