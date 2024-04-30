
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var settingButtonclicked: UIBarButtonItem!
    @IBAction func profileButtonclicked(_ sender: Any) {
        
        let controller = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "profileViewController")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func settingButtonclicked(_ sender: Any) {
        let controller = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "settingsViewController")
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
    
    @IBAction func helpButtonclicked(_ sender: Any) {
        
        let controller = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "helpViewController")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    
    @IBOutlet weak var profileButtonclicked: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        //TODO: Go to storyboard, select viewcontroller, Now in Top Menu Bar
        //Editor->Embded In -> Navigation Controller and add Bar buttons before follwing code
    }
    
    override func viewDidAppear(_ animated: Bool) {
        setupNavigationBar()
    }
    
    //Customize Navigation Bar Appearance
    func setupNavigationBar()
    {
        let navigationBar = self.navigationController?.navigationBar
        navigationBar?.barStyle = UIBarStyle.black
        navigationBar?.tintColor = UIColor.yellow
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
//        let image = UIImage(named: "Swift_logo")
//        imageView.image = image
        
        navigationItem.titleView = imageView
    }

    //Handle Navigation Bar Button Actions
    @IBAction func profileButtonClicked(_ sender: Any) {
        print("Go to Profile View Controller")
    }
    
    @IBAction func settingButtonClicked(_ sender: Any) {
        print("Go to Settings View Contorller")

    }
    @IBAction func helpButtonClicked(_ sender: Any) {
        print("This is Navigation Bar Help Button")

    }
}

