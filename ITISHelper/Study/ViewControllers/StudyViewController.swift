import UIKit

class StudyViewController: UIViewController {
    
    var buttonMySubjects: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setUpButtonMySubjects()
        
    }
    func setUpButtonMySubjects() {
        buttonMySubjects = UIButton()
        view.addSubview(buttonMySubjects)
        
        buttonMySubjects.setTitle("МОИ ПРЕДМЕТЫ", for: .normal)
        buttonMySubjects.setTitleColor(.gray, for: .normal)
        buttonMySubjects.setTitleColor(.systemCyan, for: .highlighted)
        
        buttonMySubjects.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        
        buttonMySubjects.layer.borderColor = UIColor.gray.cgColor
        buttonMySubjects.layer.backgroundColor = UIColor.white.cgColor
        buttonMySubjects.layer.borderWidth = 2
        buttonMySubjects.layer.cornerRadius = 25
        
        buttonMySubjects.translatesAutoresizingMaskIntoConstraints = false
        buttonMySubjects.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -107).isActive = true
        buttonMySubjects.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        buttonMySubjects.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        buttonMySubjects.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        buttonMySubjects.addTarget(self, action: #selector(buttonActionMySubjects), for: .touchUpInside)
    }
    
    @objc func buttonActionMySubjects() {
        guard let mySubjectsVC = storyboard?.instantiateViewController(withIdentifier: "MySubjectsViewController") else { return }
        present(mySubjectsVC, animated: true, completion: nil)
    }
}
