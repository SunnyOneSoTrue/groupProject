//
//  welcomeCell.swift
//  GropProject
//
//  Created by lado tsivtsivadze on 7/4/21.
//

import UIKit

class welcomeCell: UICollectionViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    var imageView: UIImageView?
    var image: UIImage?
    var text: String?
    
    var textLabel: UILabel {
        guard let text = text else { return UILabel() }
        let frame = CGRect(x: 20,
                           y: 300,
                           width: 343,
                           height: 163)
        
        let font = UIFont(name: "Helvetica Neue", size: 40)
        let label = UILabel(frame: frame)
        label.text = text
        label.font = font
        label.textColor = .white
        label.numberOfLines = 3
        
        return label
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        guard let image = image else { return }
        //guard let text = text else { return }
        
        imageView = UIImageView()
        imageView!.frame = bounds
        imageView!.image = image
        addSubview(imageView!)
        setUpImageGradient()

        imageView!.addSubview(textLabel)
    }
    
    func setUpImageGradient() {
        guard let imageView = imageView else { return }
        let view  = UIView(frame: bounds)
        let gradient = CAGradientLayer()
        gradient.frame = view.frame

        let color1 = UIColor.black.withAlphaComponent(0).cgColor
        let color2 = UIColor.black.withAlphaComponent(1).cgColor
    
        gradient.colors = [color1, color2]
        gradient.startPoint = CGPoint(x: 0.5, y: 0.4)
        gradient.endPoint = CGPoint(x: 0.5, y: 1)
        
        view.layer.insertSublayer(gradient, at: 0)

        imageView.addSubview(view)
        imageView.bringSubviewToFront(view)
    }
}
