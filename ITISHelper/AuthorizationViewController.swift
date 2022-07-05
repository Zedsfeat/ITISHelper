import UIKit

class AuthorizationViewController: UIViewController {
    
    
    
    @IBOutlet weak var imageViewItis: UIImageView!
    var labelAuthorization: UILabel!
    var textFieldAuthorization: UITextField!
    var buttonAuthorization: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpLabelAuthorization()
        setUpTextFieldAuthorization()
        setUpButtonAuthorization()
    }
    
    func setUpLabelAuthorization() {
        labelAuthorization = UILabel()
        view.addSubview(labelAuthorization)
        
        labelAuthorization.text = "ВВЕДИТЕ СВОЕ ФИО"
        labelAuthorization.textColor = .white
        labelAuthorization.font = UIFont.systemFont(ofSize: 80)
        labelAuthorization.numberOfLines = 0
        
        labelAuthorization.translatesAutoresizingMaskIntoConstraints = false
        labelAuthorization.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        labelAuthorization.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        labelAuthorization.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    }
    
    func setUpTextFieldAuthorization() {
        textFieldAuthorization = UITextField()
        view.addSubview(textFieldAuthorization)
        
        textFieldAuthorization.layer.borderColor = UIColor.white.cgColor
        textFieldAuthorization.layer.borderWidth = 3
        textFieldAuthorization.font = UIFont.systemFont(ofSize: 50)
        textFieldAuthorization.textColor = .white
        textFieldAuthorization.minimumFontSize = 0
        
        textFieldAuthorization.translatesAutoresizingMaskIntoConstraints = false
        textFieldAuthorization.topAnchor.constraint(equalTo: labelAuthorization.bottomAnchor, constant: 20).isActive = true
        textFieldAuthorization.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        textFieldAuthorization.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
    }
    
    func setUpButtonAuthorization() {
        buttonAuthorization = UIButton()
        view.addSubview(buttonAuthorization)
        
        buttonAuthorization.setTitle("NEXT", for: .normal)
        buttonAuthorization.layer.borderWidth = 3
        buttonAuthorization.layer.borderColor = UIColor.white.cgColor
        buttonAuthorization.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        
        buttonAuthorization.translatesAutoresizingMaskIntoConstraints = false
        buttonAuthorization.topAnchor.constraint(equalTo: textFieldAuthorization.bottomAnchor, constant: 25).isActive = true
        buttonAuthorization.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        buttonAuthorization.heightAnchor.constraint(equalToConstant: 60).isActive = true
        buttonAuthorization.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        buttonAuthorization.addTarget(self, action: #selector(buttonActionAuthorization(sender:)), for: .touchUpInside)
    }
    
    @objc func buttonActionAuthorization(sender: UIButton) {
    }
    
}
