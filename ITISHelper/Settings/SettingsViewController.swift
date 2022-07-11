import UIKit

class SettingsViewController: UIViewController {

    var titleTimeTable: UIButton!
    var buttonSettings: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .gray
        setUpButtonSettings()
    }
    
    func setUpButtonSettings() {
        buttonSettings = UIButton()
        view.addSubview(buttonSettings)
        
        buttonSettings.setTitle("СМЕНИТЬ ПРОФИЛЬ", for: .normal)
        buttonSettings.setTitleColor(.systemGray, for: .normal)
        buttonSettings.setTitleColor(.darkGray, for: .highlighted)
        buttonSettings.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        
        buttonSettings.layer.borderColor = UIColor.systemGray.cgColor
        buttonSettings.layer.backgroundColor = UIColor.white.cgColor
        buttonSettings.layer.borderWidth = 2
        buttonSettings.layer.cornerRadius = 25
        
        buttonSettings.translatesAutoresizingMaskIntoConstraints = false
        buttonSettings.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -107).isActive = true
        buttonSettings.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        buttonSettings.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        buttonSettings.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        buttonSettings.addTarget(self, action: #selector(buttonSettingsAction), for: .touchUpInside)
    }
    
    @objc func buttonSettingsAction() {
        guard let authorizationVC = storyboard?.instantiateViewController(withIdentifier: "AuthorizationViewController") else { return }
        authorizationVC.modalPresentationStyle = .fullScreen
        present(authorizationVC, animated: true, completion: nil)
    }
}


