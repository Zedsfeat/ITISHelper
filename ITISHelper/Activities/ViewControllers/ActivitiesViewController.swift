import UIKit

class ActivitiesViewController: UIViewController {

    var buttonItisRequest: UIButton!
    var buttonRating: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
    
        setUpRating()
        setUpItisRequest()
    }
    
    func setUpItisRequest() {
        buttonItisRequest = UIButton()
        view.addSubview(buttonItisRequest)
        
        buttonItisRequest.setTitle("ITIS REQUEST", for: .normal)
        buttonItisRequest.setTitleColor(.gray, for: .normal)
        buttonItisRequest.setTitleColor(.systemCyan, for: .highlighted)
        buttonItisRequest.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        
        buttonItisRequest.layer.borderColor = UIColor.gray.cgColor
        buttonItisRequest.layer.backgroundColor = UIColor.white.cgColor
        buttonItisRequest.layer.borderWidth = 2
        buttonItisRequest.layer.cornerRadius = 25
                
        buttonItisRequest.translatesAutoresizingMaskIntoConstraints = false
        buttonItisRequest.bottomAnchor.constraint(equalTo: buttonRating.topAnchor, constant: -25).isActive = true
        buttonItisRequest.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        buttonItisRequest.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        buttonItisRequest.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        buttonItisRequest.addTarget(self, action: #selector(buttonActionItisRequest), for: .touchUpInside)
    }
    
    func setUpRating() {
        buttonRating = UIButton()
        view.addSubview(buttonRating)
        
        buttonRating.setTitle("РЕЙТИНГ", for: .normal)
        buttonRating.setTitleColor(.gray, for: .normal)
        buttonRating.setTitleColor(.systemCyan, for: .highlighted)
        buttonRating.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        
        buttonRating.layer.borderColor = UIColor.gray.cgColor
        buttonRating.layer.backgroundColor = UIColor.white.cgColor
        buttonRating.layer.borderWidth = 2
        buttonRating.layer.cornerRadius = 25
        
        buttonRating.translatesAutoresizingMaskIntoConstraints = false
        buttonRating.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -107).isActive = true
        buttonRating.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        buttonRating.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        buttonRating.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        buttonRating.addTarget(self, action: #selector(buttonActionRating), for: .touchUpInside)
    }
    
    @objc func buttonActionItisRequest() {
        guard let itisRequestVC = storyboard?.instantiateViewController(withIdentifier: "ItisRequestViewController") else { return }
        present(itisRequestVC, animated: true, completion: nil)
    }
    
    @objc func buttonActionRating() {
        guard let ratingVC = storyboard?.instantiateViewController(withIdentifier: "RatingViewController") else { return }
        present(ratingVC, animated: true, completion: nil)
    }
}

