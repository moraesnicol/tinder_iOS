

import UIKit

class CombineCardView: UIView {
    
    
    var usuario: Usuario? {
      didSet  {
        if let usuario = usuario {
            fotoImageView.image = UIImage(named: usuario.foto)
            especieLabel.text = usuario.especie
            poderLabel.text = String(usuario.poder)
            fraseLabel.text = usuario.frase
           }
        }
    }
    
    let fotoImageView: UIImageView = .fotoImageView()
    
    let especieLabel: UILabel = .textBoldLabel(20, textColor: .darkGray, numberOflines: 1)
    let poderLabel: UILabel = .textBoldLabel(20, textColor: .purple, numberOflines: 1)
    let fraseLabel: UILabel = .textBoldLabel(16, textColor: .darkGray, numberOflines: 2)

    
    let deslikeImageView: UIImageView = .iconCard(named: "card-deslike")
    let likeImageView: UIImageView = .iconCard(named: "card-like")
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.borderWidth = 0.9
        layer.borderColor = UIColor.purple.cgColor
        layer.cornerRadius = 8
        clipsToBounds = true
        
        especieLabel.adicionaShadow()
        poderLabel.adicionaShadow()
        fraseLabel.adicionaShadow()
        
        
        addSubview(fotoImageView)
        
        addSubview(deslikeImageView)
        deslikeImageView.preencher(
            top: topAnchor,
            leading: nil,
            trailing: trailingAnchor,
            bottom: nil,
            padding: .init(top: 20, left: 0, bottom: 0, right: 20)
        )
        
        addSubview(likeImageView)
        likeImageView.preencher(
            top: topAnchor,
            leading: leadingAnchor,
            trailing: nil,
            bottom: nil,
            padding: .init(top: 20, left: 20, bottom: 0, right: 0)
        )
                fotoImageView.preencherSuperview()
        
        let stackView = UIStackView(arrangedSubviews: [especieLabel, poderLabel,  fraseLabel])
        stackView.spacing = 5
        stackView.distribution = .fillProportionally
        stackView.axis = .vertical
        stackView.alignment = .center
        
        
        addSubview(stackView)
        stackView.preencher(
            top: nil,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            bottom: bottomAnchor,
            padding: .init(top: 0, left: 18, bottom: 75, right: 16)
        )
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
}
