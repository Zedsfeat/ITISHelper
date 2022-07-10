import UIKit

class ActivitiesViewController: UIViewController {

    var buttonItisRequest: UIButton!
    var buttonMyPosition: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
    
        setUpMyPosition()
        setUpItisRequest()
    }
    
    func setUpItisRequest() {
        buttonItisRequest = UIButton()
        view.addSubview(buttonItisRequest)
        
        buttonItisRequest.setTitle("РЕЙТИНГ", for: .normal)
        buttonItisRequest.setTitleColor(.gray, for: .normal)
        buttonItisRequest.setTitleColor(.systemCyan, for: .highlighted)
        buttonItisRequest.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        
        buttonItisRequest.layer.borderColor = UIColor.gray.cgColor
        buttonItisRequest.layer.backgroundColor = UIColor.white.cgColor
        buttonItisRequest.layer.borderWidth = 2
        buttonItisRequest.layer.cornerRadius = 25
                
        buttonItisRequest.translatesAutoresizingMaskIntoConstraints = false
        buttonItisRequest.bottomAnchor.constraint(equalTo: buttonMyPosition.topAnchor, constant: -25).isActive = true
        buttonItisRequest.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        buttonItisRequest.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        buttonItisRequest.heightAnchor.constraint(equalToConstant: 80).isActive = true
    }
    
    func setUpMyPosition() {
        buttonMyPosition = UIButton()
        view.addSubview(buttonMyPosition)
        
        buttonMyPosition.setTitle("МЕСТО В РЕЙТИНГЕ", for: .normal)
        buttonMyPosition.setTitleColor(.gray, for: .normal)
        buttonMyPosition.setTitleColor(.systemCyan, for: .highlighted)
        buttonMyPosition.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        
        buttonMyPosition.layer.borderColor = UIColor.gray.cgColor
        buttonMyPosition.layer.backgroundColor = UIColor.white.cgColor
        buttonMyPosition.layer.borderWidth = 2
        buttonMyPosition.layer.cornerRadius = 25
        
        buttonMyPosition.translatesAutoresizingMaskIntoConstraints = false
        buttonMyPosition.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -107).isActive = true
        buttonMyPosition.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        buttonMyPosition.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        buttonMyPosition.heightAnchor.constraint(equalToConstant: 80).isActive = true
    }
}

