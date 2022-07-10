import UIKit

class AuthorizationViewController: UIViewController {
    var titleAuthorization: UIButton!
    var textFieldAuthorization: UITextField!
    var buttonAuthorization: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemCyan
        
        
        setUpTitleAuthorization()
        setUpTextFieldAuthorization()
        setUpButtonAuthorization()
    }
    
    func setUpTitleAuthorization() {
        titleAuthorization = UIButton()
        view.addSubview(titleAuthorization)
        
        titleAuthorization.setTitle("ВВЕДИТЕ СВОЕ ФИО", for: .normal)
        titleAuthorization.setTitleColor(.gray, for: .normal)
        titleAuthorization.titleLabel?.font = UIFont.boldSystemFont(ofSize: 60)
        titleAuthorization.titleLabel?.numberOfLines = 0
        
        titleAuthorization.layer.borderColor = UIColor.gray.cgColor
        titleAuthorization.layer.backgroundColor = UIColor.white.cgColor
        titleAuthorization.layer.borderWidth = 2
        titleAuthorization.layer.cornerRadius = 25
        
        titleAuthorization.translatesAutoresizingMaskIntoConstraints = false
        titleAuthorization.topAnchor.constraint(equalTo: view.topAnchor, constant: 65).isActive = true
        titleAuthorization.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        titleAuthorization.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        titleAuthorization.heightAnchor.constraint(equalToConstant: 175).isActive = true
        
    }
    
    func setUpTextFieldAuthorization() {
        textFieldAuthorization = UITextField()
        view.addSubview(textFieldAuthorization)
        
        textFieldAuthorization.text = " "
        textFieldAuthorization.layer.borderColor = UIColor.gray.cgColor
        textFieldAuthorization.layer.borderWidth = 2
        textFieldAuthorization.layer.cornerRadius = 25
        textFieldAuthorization.font = UIFont.systemFont(ofSize: 50)
        textFieldAuthorization.textColor = .gray
        textFieldAuthorization.minimumFontSize = 0
        textFieldAuthorization.backgroundColor = .white
        textFieldAuthorization.tintColor = .gray
        
        textFieldAuthorization.translatesAutoresizingMaskIntoConstraints = false
        textFieldAuthorization.topAnchor.constraint(equalTo: titleAuthorization.bottomAnchor, constant: 28).isActive = true
        textFieldAuthorization.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        textFieldAuthorization.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
    }
    
    func setUpButtonAuthorization() {
        buttonAuthorization = UIButton()
        view.addSubview(buttonAuthorization)
        
        buttonAuthorization.setTitle("ДАЛЕЕ", for: .normal)
        buttonAuthorization.setTitleColor(.gray, for: .normal)
        buttonAuthorization.setTitleColor(.systemCyan, for: .highlighted)
        buttonAuthorization.layer.borderWidth = 2
        buttonAuthorization.layer.borderColor = UIColor.gray.cgColor
        buttonAuthorization.layer.cornerRadius = 20
        buttonAuthorization.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        buttonAuthorization.backgroundColor = .white
        
        
        buttonAuthorization.translatesAutoresizingMaskIntoConstraints = false
        buttonAuthorization.topAnchor.constraint(equalTo: textFieldAuthorization.bottomAnchor, constant: 25).isActive = true
        buttonAuthorization.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        buttonAuthorization.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonAuthorization.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        buttonAuthorization.addTarget(self, action: #selector(buttonActionAuthorization(sender:)), for: .touchUpInside)
    }
    
    @objc func buttonActionAuthorization(sender: UIButton) {
        guard var fio = textFieldAuthorization.text else { return }
        fio = fio[fio.startIndex] == " " ? String(fio.dropFirst()) : fio
        
        if fio == "Something" {
            guard let tabBarVC = storyboard?.instantiateViewController(withIdentifier: "TabBarViewController") else { return }
            tabBarVC.modalPresentationStyle = .fullScreen
            present(tabBarVC, animated: true, completion: nil)
            
        } else {
            guard let wrongVC = storyboard?.instantiateViewController(withIdentifier: "WrongViewController") else { return }
            present(wrongVC, animated: true, completion: nil)
        }
    }
}

