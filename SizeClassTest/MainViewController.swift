import UIKit

class MainViewController: UIViewController {

  internal var mainView: MainView? {
    return view as? MainView
  }
  
  override func loadView() {
    super.loadView()
    
    view = MainView()
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    title = "Constraints"
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}
