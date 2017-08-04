import UIKit

class StackTestViewController: UIViewController {
  
  internal var mainView: StackTestView? {
    return view as? StackTestView
  }
  
  override func loadView() {
    super.loadView()
    
    view = StackTestView()
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    title = "StackView"
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
//  override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
//    super.willTransition(to: newCollection, with: coordinator)
//    print("StackTestViewController willTransition")
//    mainView?.changeTraitCollection(newCollection: newCollection)
//  }
}

