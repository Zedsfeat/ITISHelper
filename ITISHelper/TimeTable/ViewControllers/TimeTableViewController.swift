import UIKit

class TimeTableViewController: UIViewController {
    
    var buttonOnDay: UIButton!
    var buttonOnWeek: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        setUpOnWeek()
        setUpOnDay()
    }
    
    func setUpOnDay() {
        buttonOnDay = UIButton()
        view.addSubview(buttonOnDay)
        
        buttonOnDay.setTitle("НА СЕГОДНЯ", for: .normal)
        buttonOnDay.setTitleColor(.systemGray, for: .normal)
        buttonOnDay.setTitleColor(.darkGray, for: .highlighted)
        buttonOnDay.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        
        buttonOnDay.layer.borderColor = UIColor.systemGray.cgColor
        buttonOnDay.layer.backgroundColor = UIColor.white.cgColor
        buttonOnDay.layer.borderWidth = 2
        buttonOnDay.layer.cornerRadius = 25
                
        buttonOnDay.translatesAutoresizingMaskIntoConstraints = false
        buttonOnDay.bottomAnchor.constraint(equalTo: buttonOnWeek.topAnchor, constant: -25).isActive = true
        buttonOnDay.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        buttonOnDay.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        buttonOnDay.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        buttonOnDay.addTarget(self, action: #selector(buttonActionOnDay), for: .touchUpInside)
    }
    
    func setUpOnWeek() {
        buttonOnWeek = UIButton()
        view.addSubview(buttonOnWeek)
        
        buttonOnWeek.setTitle("НА НЕДЕЛЮ", for: .normal)
        buttonOnWeek.setTitleColor(.systemGray, for: .normal)
        buttonOnWeek.setTitleColor(.darkGray, for: .highlighted)
        buttonOnWeek.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        
        buttonOnWeek.layer.borderColor = UIColor.systemGray.cgColor
        buttonOnWeek.layer.backgroundColor = UIColor.white.cgColor
        buttonOnWeek.layer.borderWidth = 2
        buttonOnWeek.layer.cornerRadius = 25
        
        buttonOnWeek.translatesAutoresizingMaskIntoConstraints = false
        buttonOnWeek.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -107).isActive = true
        buttonOnWeek.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        buttonOnWeek.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        buttonOnWeek.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        buttonOnWeek.addTarget(self, action: #selector(buttonActionOnWeek), for: .touchUpInside)
    }
    
    @objc func buttonActionOnDay() {
        guard let onDayVC = storyboard?.instantiateViewController(withIdentifier: "OnDayViewController") else { return }
        present(onDayVC, animated: true, completion: nil)
    }
    
    @objc func buttonActionOnWeek() {
        guard let onWeekVC = storyboard?.instantiateViewController(withIdentifier: "OnWeekViewController") else { return }
        present(onWeekVC, animated: true, completion: nil)
    }
}
