import UIKit

class ItisRequestViewController: UIViewController {
    
    @IBOutlet weak var postText: UITextView!
    @IBOutlet weak var postInfoButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    public var postIndex = 0
    
    let posts = getVkPosts()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setUpPostText()
        setUpPostInfoButton()
        setUpBackButton()
        setUpNextButton()
    }
    
    func setUpPostText() {
        postText.text = posts[postIndex][0]
        postText.layer.cornerRadius = 25
        postText.layer.borderColor = UIColor.systemGray.cgColor
        postText.layer.borderWidth = 2
        postText.backgroundColor = .tertiaryLabel
        
        postInfoButton.translatesAutoresizingMaskIntoConstraints = false
        postInfoButton.topAnchor.constraint(equalTo: postText.bottomAnchor, constant: 25).isActive = true
        postInfoButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        postInfoButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        postInfoButton.heightAnchor.constraint(equalToConstant: 55).isActive = true
        
    }
    
    func setUpPostInfoButton() {
        
        postInfoButton.setTitle("Перейти к посту", for: .normal)
        postInfoButton.setTitleColor(.gray, for: .normal)
        postInfoButton.setTitleColor(.darkGray, for: .highlighted)
        postInfoButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        
        postInfoButton.layer.borderColor = UIColor.systemGray.cgColor
        postInfoButton.layer.backgroundColor = UIColor.tertiaryLabel.cgColor
        postInfoButton.layer.borderWidth = 2
        postInfoButton.layer.cornerRadius = 25
        
        postInfoButton.translatesAutoresizingMaskIntoConstraints = false
        postInfoButton.topAnchor.constraint(equalTo: postText.bottomAnchor, constant: 25).isActive = true
        postInfoButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        postInfoButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        postInfoButton.heightAnchor.constraint(equalToConstant: 55).isActive = true
        
    }
    
    func setUpBackButton() {
        backButton.setTitle("Предыдущий", for: .normal)
        backButton.setTitleColor(.gray, for: .normal)
        backButton.setTitleColor(.darkGray, for: .highlighted)
        backButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        
        backButton.layer.borderColor = UIColor.systemGray.cgColor
        backButton.layer.backgroundColor = UIColor.tertiaryLabel.cgColor
        backButton.layer.borderWidth = 2
        backButton.layer.cornerRadius = 25
        
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.topAnchor.constraint(equalTo: postInfoButton.bottomAnchor, constant: 25).isActive = true
        backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        backButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -220).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 55).isActive = true
    }
    
    func setUpNextButton() {
        nextButton.setTitle("Следующий", for: .normal)
        nextButton.setTitleColor(.gray, for: .normal)
        nextButton.setTitleColor(.darkGray, for: .highlighted)
        nextButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        
        nextButton.layer.borderColor = UIColor.systemGray.cgColor
        nextButton.layer.backgroundColor = UIColor.tertiaryLabel.cgColor
        nextButton.layer.borderWidth = 2
        nextButton.layer.cornerRadius = 25
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.topAnchor.constraint(equalTo: postInfoButton.bottomAnchor, constant: 25).isActive = true
        nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 220).isActive = true
        nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 55).isActive = true
    }
    
    
    @IBAction func postInfoButtonAction(_ sender: Any) {
        if let url = NSURL(string: posts[postIndex][1]){
            UIApplication.shared.open(url as URL)
        }
    }
    
    @IBAction func nextButtonAction(_ sender: Any) {
        if postIndex != 8 {
            postIndex += 1
            postText.text = posts[postIndex][0]
            }
    }
    @IBAction func backButtonAction(_ sender: Any) {
        if postIndex != 0 {
            postIndex -= 1
            postText.text = posts[postIndex][0]
        }
    }
}
