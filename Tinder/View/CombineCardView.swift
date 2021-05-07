

import UIKit

class CombineCardView: UIView {
    
    let fotoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "VEmG7")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let especieLabel: UILabel = .textBoldLabel(20, textColor: .darkGray, numberOflines: 2)
    let poderLabel: UILabel = .textBoldLabel(20, textColor: .darkGray, numberOflines: 2)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.borderWidth = 0.9
        layer.borderColor = UIColor.purple.cgColor
        layer.cornerRadius = 8
        clipsToBounds = true
        
        
        especieLabel.text = "Espécie: Humano "
        poderLabel.text = "Poder: 25"
        
        especieLabel.adicionaShadow()
        poderLabel.adicionaShadow()
        
        
        
        addSubview(fotoImageView)
        
        fotoImageView.preencherSuperview()
        
        let stackView = UIStackView(arrangedSubviews: [especieLabel, poderLabel, UIView()])
        stackView.spacing = 12
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
