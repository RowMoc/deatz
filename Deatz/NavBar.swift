import UIKit

class NavBar: UITabBarController, UITabBarControllerDelegate {
    
    var tabBarIteam = UITabBarItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
        let homeImage = UIImage(named: "home_unselected")?.withRenderingMode(.alwaysOriginal)
        tabBarIteam = (self.tabBar.items?[0])!
        tabBarIteam.image = homeImage
        tabBarIteam.selectedImage = UIImage(named: "home_selected")?.withRenderingMode(.alwaysOriginal)
        
        let calendarImage = UIImage(named: "calendar_unselected")?.withRenderingMode(.alwaysOriginal)
        tabBarIteam = (self.tabBar.items?[1])!
        tabBarIteam.image = calendarImage
        tabBarIteam.selectedImage = UIImage(named: "calendar_selected")?.withRenderingMode(.alwaysOriginal)
        
        let searchImage = UIImage(named: "search_unselected")?.withRenderingMode(.alwaysOriginal)
        tabBarIteam = (self.tabBar.items?[2])!
        tabBarIteam.image = searchImage
        tabBarIteam.selectedImage = UIImage(named: "search_selected")?.withRenderingMode(.alwaysOriginal)
        
        let groupsImage = UIImage(named: "groups_unselected")?.withRenderingMode(.alwaysOriginal)
        tabBarIteam = (self.tabBar.items?[3])!
        tabBarIteam.image = groupsImage
        tabBarIteam.selectedImage = UIImage(named: "groups_selected")?.withRenderingMode(.alwaysOriginal)
        
        let profileImage = UIImage(named: "profile_unselected")?.withRenderingMode(.alwaysOriginal)
        tabBarIteam = (self.tabBar.items?[4])!
        tabBarIteam.image = profileImage
        tabBarIteam.selectedImage = UIImage(named: "profile_selected")?.withRenderingMode(.alwaysOriginal)
        
        
        // selected tab background color
        let numberOfItems = CGFloat(tabBar.items!.count)

        for tabBarItem in tabBar.items! {
            tabBarItem.title = ""
            tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        }
        let highlightsize = CGSize(width: tabBar.frame.width / numberOfItems - 5, height: 10)

        
        // initaial tab bar index
        self.selectedIndex = 0
        restorationIdentifier = nil
        
    }
    // UITabBarDelegate
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print("Selected item")
    }
    
    // UITabBarControllerDelegate
    func tabBarController(tabBarController: UITabBarController, didSelectViewController viewController: UIViewController) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension UIImage {
    class func imageWithColor(color: UIColor, size: CGSize) -> UIImage {
        let rect: CGRect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(rect)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}
