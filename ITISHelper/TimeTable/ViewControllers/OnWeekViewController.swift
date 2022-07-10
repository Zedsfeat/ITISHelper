import UIKit


class OnWeekViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var onWeekTable: UITableView!
    let onDayID = "OnDayTableViewCell"
    var modelTimeTable = ModelTimeTable()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        modelTimeTable.setUpWeek() // Инициализация расписания
        view.backgroundColor = .systemCyan
        onWeekTable.backgroundColor = .white
        onWeekTable.separatorStyle = .none
        
        onWeekTable.dataSource = self
        onWeekTable.delegate = self
        
        setUpTableView()
    }
    
    func setUpTableView() {
        
        onWeekTable.translatesAutoresizingMaskIntoConstraints = false
        onWeekTable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        onWeekTable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        onWeekTable.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        onWeekTable.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        75
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return modelTimeTable.arrayOfPairsPerWeek.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = modelTimeTable.arrayOfPairsPerWeek[section]
        return section.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrayDaysOfWeek[section]
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        50
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let returnedView = UIView()
        
        
        let label = UILabel(frame: CGRect(x: 46, y: 0, width: 280, height: 50))
        
        label.textAlignment = .center
        label.numberOfLines = 0
        label.text = arrayDaysOfWeek[section]
        label.textColor = .systemCyan
        label.font = UIFont.boldSystemFont(ofSize: 30)
        
        returnedView.addSubview(label)

        return returnedView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: onDayID) as! OnDayTableViewCell
        
        cell.backgroundColor = .systemCyan
        
        let section = modelTimeTable.arrayOfPairsPerWeek[indexPath.section]
        let someDay = section[indexPath.row]
        
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
