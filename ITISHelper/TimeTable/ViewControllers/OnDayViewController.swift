import UIKit


class OnDayViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var onDayTable: UITableView!
    let onDayID = "OnDayTableViewCell"
    var modelTimeTable = ModelTimeTable()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        modelTimeTable.setUpFriday() // Инициализация пар в пятницу
        view.backgroundColor = .systemCyan
        onDayTable.backgroundColor = .white
        onDayTable.separatorStyle = .none
        
        onDayTable.dataSource = self
        onDayTable.delegate = self
        
        setUpTableView()
    }
    
    func setUpTableView() {
        onDayTable.translatesAutoresizingMaskIntoConstraints = false
        onDayTable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        onDayTable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        onDayTable.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        onDayTable.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        75
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelTimeTable.arrayFriday.count
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        50
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let returnedView = UIView()
        
        
        let label = UILabel(frame: CGRect(x: 46, y: 0, width: 280, height: 50))
        
        label.textAlignment = .center
        label.numberOfLines = 0
        label.text = "Пятница"
        label.textColor = .systemCyan
        label.font = UIFont.boldSystemFont(ofSize: 40)
        
        returnedView.addSubview(label)

        return returnedView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: onDayID) as! OnDayTableViewCell
        
        cell.backgroundColor = .systemCyan
    
        let someDay = modelTimeTable.arrayFriday[indexPath.row]
        
        cell.labelTime.text = someDay.time
        cell.labelRoom.text = someDay.room
        cell.labelSubject.text = someDay.subject
        cell.labelTeacher.text = someDay.teacher
        
        cell.labelTime.textColor = .white
        cell.labelRoom.textColor = .white
        cell.labelSubject.textColor = .white
        cell.labelTeacher.textColor = .white
        
        return cell
    }
}
