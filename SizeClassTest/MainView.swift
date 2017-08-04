import UIKit

class MainView: UIView {

  let button1: UIButton
  let button2: UIButton
  let button3: UIButton
  let button4: UIButton
  
  var activeConstraints: [NSLayoutConstraint] = []
  
  override init(frame: CGRect) {
    
    button1 = UIButton(frame: .zero)
    button1.translatesAutoresizingMaskIntoConstraints = false
    button1.setTitle("Button 1", for: .normal)
    button1.setTitleColor(.black, for: .normal)
    button1.setTitleColor(.red, for: .highlighted)
    button1.widthAnchor.constraint(equalToConstant: 200).isActive = true
    button1.heightAnchor.constraint(equalToConstant: 100).isActive = true
    button1.backgroundColor = .lightGray
    
    button2 = UIButton(frame: .zero)
    button2.translatesAutoresizingMaskIntoConstraints = false
    button2.setTitle("Button 2", for: .normal)
    button2.setTitleColor(.black, for: .normal)
    button2.setTitleColor(.red, for: .highlighted)
    button2.widthAnchor.constraint(equalToConstant: 200).isActive = true
    button2.heightAnchor.constraint(equalToConstant: 100).isActive = true
    button2.backgroundColor = .lightGray
    
    button3 = UIButton(frame: .zero)
    button3.translatesAutoresizingMaskIntoConstraints = false
    button3.setTitle("Button 3", for: .normal)
    button3.setTitleColor(.black, for: .normal)
    button3.setTitleColor(.red, for: .highlighted)
    button3.widthAnchor.constraint(equalToConstant: 200).isActive = true
    button3.heightAnchor.constraint(equalToConstant: 100).isActive = true
    button3.backgroundColor = .lightGray
    
    button4 = UIButton(frame: .zero)
    button4.translatesAutoresizingMaskIntoConstraints = false
    button4.setTitle("Button 4", for: .normal)
    button4.setTitleColor(.black, for: .normal)
    button4.setTitleColor(.red, for: .highlighted)
    button4.widthAnchor.constraint(equalToConstant: 200).isActive = true
    button4.heightAnchor.constraint(equalToConstant: 100).isActive = true
    button4.backgroundColor = .lightGray
    
    super.init(frame: frame)
    
    addSubview(button1)
    addSubview(button2)
    addSubview(button3)
    addSubview(button4)
    
    backgroundColor = .white
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  internal override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
    super.traitCollectionDidChange(previousTraitCollection)

    self.removeConstraints(self.activeConstraints)
    activeConstraints.removeAll()
    
    switch traitCollection.horizontalSizeClass {
    case .compact:
      activeConstraints.append(button1.topAnchor.constraint(equalTo: self.topAnchor, constant: 150))
      activeConstraints.append(button1.centerXAnchor.constraint(equalTo: self.centerXAnchor))
   
      activeConstraints.append(button2.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 10))
      activeConstraints.append(button2.centerXAnchor.constraint(equalTo: button1.centerXAnchor))
    
      activeConstraints.append(button3.topAnchor.constraint(equalTo: button2.bottomAnchor, constant: 10))
      activeConstraints.append(button3.centerXAnchor.constraint(equalTo: button2.centerXAnchor))
   
      activeConstraints.append(button4.topAnchor.constraint(equalTo: button3.bottomAnchor, constant: 10))
      activeConstraints.append(button4.centerXAnchor.constraint(equalTo: button3.centerXAnchor))
      
    default:
      activeConstraints.append(button1.topAnchor.constraint(equalTo: self.topAnchor, constant: 150))
      activeConstraints.append(button1.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50))
      
      activeConstraints.append(button2.leadingAnchor.constraint(equalTo: button1.trailingAnchor, constant: 100))
      activeConstraints.append(button2.centerYAnchor.constraint(equalTo: button1.centerYAnchor))
      
      activeConstraints.append(button3.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 10))
      activeConstraints.append(button3.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50))
      
      activeConstraints.append(button4.leadingAnchor.constraint(equalTo: button3.trailingAnchor, constant: 100))
      activeConstraints.append(button4.centerYAnchor.constraint(equalTo: button3.centerYAnchor))
    }
 
    NSLayoutConstraint.activate(activeConstraints)
  }
}
