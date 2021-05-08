//
//  CombineVC.swift
//  Tinder
//
//  Created by Gabriel on 04/05/21.
//

import UIKit

class CombineVc: UIViewController {
    
    
    var usuarios: [Usuario] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.systemGroupedBackground
    
    
        self.adicionarCards()
        self.buscaUsuarios()
    }
    
    func buscaUsuarios () {
        self.usuarios = UsuarioService.shared.buscaUsuarios()
        self.adicionarCards()
        
    }
    
}

extension CombineVc {
    func adicionarCards () {
        
        for usuario in usuarios {
            let card = CombineCardView()
            card.frame = CGRect(
                x: 0, y: 0, width: view.bounds.width - 32, height: view.bounds.height * 0.7)
                
            card.center = view.center
            card.usuario = usuario
            card.tag = usuario.id
                
            let gesture = UIPanGestureRecognizer()
            gesture.addTarget(self, action: #selector(handlerCard))
                
                card.addGestureRecognizer(gesture)
                
            view.insertSubview(card, at: 0)
        }
        
        
        
    }
}

extension CombineVc {
    @objc func handlerCard ( gesture: UIPanGestureRecognizer ) {
        if let card = gesture.view {
            let point = gesture.translation(in: view)
            
            
            card.center = CGPoint(x: view.center.x + point.x, y: view.center.y + point.y)
            
            let rotationAngle = point.x / view.bounds.width * 0.4
            
            card.transform = CGAffineTransform(rotationAngle: rotationAngle)
            
            if gesture.state == .ended {
                
                UIView.animate(withDuration: 0.2) {
                card.center = self.view.center
                card.transform = .identity
            }
        }
    }
}

}
