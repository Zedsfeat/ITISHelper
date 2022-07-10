import UIKit

class TabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()

        
        tabBar.layer.borderColor = UIColor.gray.cgColor
        tabBar.layer.borderWidth = 2
        tabBar.layer.cornerRadius = 25
        tabBar.unselectedItemTintColor = .gray
        self.selectedIndex = 2
        
    }
}


