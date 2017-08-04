import UIKit

class StackTestView: UIView {
  
  let button1: UIButton
  let button2: UIButton
  let button3: UIButton
  let button4: UIButton
  
  let stackView: UIStackView
  let innerStack1: UIStackView
  let innerStack2: UIStackView
  
  override init(frame: CGRect) {
    
    button1 = UIButton(frame: .zero)
    button1.setTitle("Button 1", for: .normal)
    button1.setTitleColor(.black, for: .normal)
    button1.setTitleColor(.red, for: .highlighted)
    button1.widthAnchor.constraint(equalToConstant: 200).isActive = true
    button1.heightAnchor.constraint(equalToConstant: 100).isActive = true
    button1.backgroundColor = .lightGray
    
    button2 = UIButton(frame: .zero)
    button2.setTitle("Button 2", for: .normal)
    button2.setTitleColor(.black, for: .normal)
    button2.setTitleColor(.red, for: .highlighted)
    button2.widthAnchor.constraint(equalToConstant: 200).isActive = true
    button2.heightAnchor.constraint(equalToConstant: 100).isActive = true
    button2.backgroundColor = .lightGray
    
    button3 = UIButton(frame: .zero)
    button3.setTitle("Button 3", for: .normal)
    button3.setTitleColor(.black, for: .normal)
    button3.setTitleColor(.red, for: .highlighted)
    button3.widthAnchor.constraint(equalToConstant: 200).isActive = true
    button3.heightAnchor.constraint(equalToConstant: 100).isActive = true
    button3.backgroundColor = .lightGray
    
    button4 = UIButton(frame: .zero)
    button4.setTitle("Button 4", for: .normal)
    button4.setTitleColor(.black, for: .normal)
    button4.setTitleColor(.red, for: .highlighted)
    button4.widthAnchor.constraint(equalToConstant: 200).isActive = true
    button4.heightAnchor.constraint(equalToConstant: 100).isActive = true
    button4.backgroundColor = .lightGray
    
    innerStack1 = UIStackView(arrangedSubviews: [button1, button2])
    innerStack1.distribution = .equalCentering
    innerStack2 = UIStackView(arrangedSubviews: [button3, button4])
    innerStack2.distribution = .equalCentering
    
    stackView = UIStackView(arrangedSubviews: [innerStack1, innerStack2])
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.axis = .vertical
    stackView.spacing = 50.0
    stackView.distribution = .fill
    
    super.init(frame: frame)
    
    addSubview(stackView)
    
    backgroundColor = .white
    
    stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 150).isActive = true
    stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  internal override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
    super.traitCollectionDidChange(previousTraitCollection)
    
    switch traitCollection.horizontalSizeClass {
    case .compact:
      innerStack1.axis = .vertical
      innerStack2.axis = .vertical
      innerStack1.spacing = 10.0
      innerStack2.spacing = 10.0
    default:
      innerStack1.axis = .horizontal
      innerStack2.axis = .horizontal
      innerStack1.spacing = 100.0
      innerStack2.spacing = 100.0
    }
  }
}
