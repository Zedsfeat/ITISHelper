import UIKit

class AuthorizationViewController: UIViewController {
    
    
    @IBOutlet weak var imageAuthorization: UIImageView!
    var textFieldAuthorization: UITextField!
    var buttonAuthorization: UIButton!
    var buttonImageNormal = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .gray
        
        imageAuthorization.layer.cornerRadius = 50
  
        
        setUpTextField()
        setUpButton()
    }
    
    func setUpTextField() {
        textFieldAuthorization = UITextField()
        view.addSubview(textFieldAuthorization)
        
        textFieldAuthorization.translatesAutoresizingMaskIntoConstraints = false
        textFieldAuthorization.topAnchor.constraint(equalTo: view.topAnchor, constant: 370).isActive = true
        textFieldAuthorization.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45).isActive = true
        textFieldAuthorization.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -45).isActive = true
        textFieldAuthorization.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        textFieldAuthorization.font = UIFont.systemFont(ofSize: 49)
        textFieldAuthorization.layer.borderWidth = 2
        textFieldAuthorization.layer.cornerRadius = 22
        textFieldAuthorization.layer.borderColor = UIColor.gray.cgColor
        textFieldAuthorization.placeholder = " Введите ФИО"
        
        
        textFieldAuthorization.textColor = .gray
        textFieldAuthorization.tintColor = .gray
    }
    
    func setUpButton() {
        buttonAuthorization = UIButton()
        view.addSubview(buttonAuthorization)
        
        buttonAuthorization.translatesAutoresizingMaskIntoConstraints = false
        buttonAuthorization.topAnchor.constraint(equalTo: textFieldAuthorization.bottomAnchor, constant: 20).isActive = true
        buttonAuthorization.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -45).isActive = true
        buttonAuthorization.heightAnchor.constraint(equalToConstant: 70).isActive = true
        buttonAuthorization.widthAnchor.constraint(equalToConstant: 70).isActive = true
        
        buttonImageNormal.image = UIImage(named: "normalButton")
        buttonImageNormal.alpha = 0
        
        buttonAuthorization.setImage(buttonImageNormal.image, for: .normal)
        buttonAuthorization.setImage(UIImage(named: "highlightedButton"), for: .highlighted)
        
        buttonAuthorization.addTarget(self, action: #selector(buttonActionAuthorization), for: .touchUpInside)
    }
    
    @objc func buttonActionAuthorization(sender: UIButton) {
        guard let fio = textFieldAuthorization.text else { return }
        if fio == "Зинатуллин Ришат Рафисович" {
            guard let tabBarVC = storyboard?.instantiateViewController(withIdentifier: "TabBarViewController") else { return }
            tabBarVC.modalPresentationStyle = .fullScreen
            present(tabBarVC, animated: true, completion: nil)

        } else {
            buttonAuthorization.setImage(UIImage(named: "wrongButton"), for: .normal)
        }
    }
}

