import UIKit

class TabbarController: UITabBarController {

  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    
    // Create Tab one
    let mainVC = MainViewController()
    let mainVCTabItem = UITabBarItem(title: "Constraints", image: UIImage(named: "constraints"), tag: 0)
    mainVC.tabBarItem = mainVCTabItem
    let mainVCNavController = UINavigationController(rootViewController: mainVC)
    
    // Create Tab three
    let stackTestVC = StackTestViewController()
    let stackTestTabItem = UITabBarItem(title: "StackView", image: UIImage(named: "stackview"), tag: 1)
    stackTestVC.tabBarItem = stackTestTabItem
    let stackTestNavController = UINavigationController(rootViewController: stackTestVC)
    
    self.viewControllers = [mainVCNavController, stackTestNavController]
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
      super.viewDidLoad()

      // Do any additional setup after loading the view.
  }

  override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
  }
}
