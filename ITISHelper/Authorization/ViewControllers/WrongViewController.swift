import UIKit

class WrongViewController: UIViewController {
    
    @IBOutlet weak var imageWrong: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpNewView()
    }
    
    func setUpNewView() {
        let newView = UIView(frame: CGRect(x: 0, y: 425, width: view.frame.width, height: 800))
        newView.backgroundColor = view.backgroundColor
        newView.layer.cornerRadius = 20

        self.view = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))

        self.view.addSubview(newView)
        newView.addSubview(imageWrong)
    }
    
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        dismiss(animated: true, completion: nil)
    }
}
