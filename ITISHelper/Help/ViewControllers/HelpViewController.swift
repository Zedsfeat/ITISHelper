import UIKit

class HelpViewController: UIViewController {
    
    var buttonMyGroupmates: UIButton!
    var buttonLeaders: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setUpButtonLeader()
        setUpButtonMyGroupmates()
    
    }
    func setUpButtonMyGroupmates() {
        buttonMyGroupmates = UIButton()
        view.addSubview(buttonMyGroupmates)
        
        buttonMyGroupmates.setTitle("CПИСОК МОЕЙ ГРУППЫ", for: .normal)
        buttonMyGroupmates.setTitleColor(.gray, for: .normal)
        buttonMyGroupmates.setTitleColor(.systemCyan, for: .highlighted)
        buttonMyGroupmates.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        
        buttonMyGroupmates.layer.borderColor = UIColor.gray.cgColor
        buttonMyGroupmates.layer.backgroundColor = UIColor.white.cgColor
        buttonMyGroupmates.layer.borderWidth = 2
        buttonMyGroupmates.layer.cornerRadius = 25
                
        buttonMyGroupmates.translatesAutoresizingMaskIntoConstraints = false
        buttonMyGroupmates.bottomAnchor.constraint(equalTo: buttonLeaders.topAnchor, constant: -25).isActive = true
        buttonMyGroupmates.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        buttonMyGroupmates.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        buttonMyGroupmates.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        buttonMyGroupmates.addTarget(self, action: #selector(buttonActionMyGroupmates), for: .touchUpInside)
    }
    
    func setUpButtonLeader() {
        buttonLeaders = UIButton()
        view.addSubview(buttonLeaders)
        
        buttonLeaders.setTitle("СПИСОК СТАРОСТ", for: .normal)
        buttonLeaders.setTitleColor(.gray, for: .normal)
        buttonLeaders.setTitleColor(.systemCyan, for: .highlighted)
        buttonLeaders.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        
        buttonLeaders.layer.borderColor = UIColor.gray.cgColor
        buttonLeaders.layer.backgroundColor = UIColor.white.cgColor
        buttonLeaders.layer.borderWidth = 2
        buttonLeaders.layer.cornerRadius = 25
        
        buttonLeaders.translatesAutoresizingMaskIntoConstraints = false
        buttonLeaders.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -107).isActive = true
        buttonLeaders.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        buttonLeaders.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        buttonLeaders.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        buttonLeaders.addTarget(self, action: #selector(buttonActionLeaders), for: .touchUpInside)
    }
    
    @objc func buttonActionMyGroupmates() {
        guard let myGroupVC = storyboard?.instantiateViewController(withIdentifier: "MyGroupViewController") else { return }
        present(myGroupVC, animated: true, completion: nil)
    }
    
    @objc func buttonActionLeaders() {
        guard let leadersVC = storyboard?.instantiateViewController(withIdentifier: "LeadersViewController") else { return }
        present(leadersVC, animated: true, completion: nil)
    }
}
