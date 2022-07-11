import UIKit

class LeadersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var leaderTableView: UITableView!
    let leadersID = "LeadersTableViewCell"
    var modelLeaders = ModelHelp()
    var newView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        
        leaderTableView.backgroundColor = .white
        leaderTableView.separatorStyle = .singleLine
        leaderTableView.separatorColor = .darkGray
        leaderTableView.dataSource = self
        leaderTableView.delegate = self

        modelLeaders.setUpLeaders() // Инициализация старост
        setUpTableView()

    }


    func setUpTableView() {
        newView = UIView(frame: CGRect(x: 0, y: 245, width: view.frame.width, height: 800))
        newView.backgroundColor = view.backgroundColor
        newView.layer.cornerRadius = 50
        view = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        view.addSubview(newView)
        newView.addSubview(leaderTableView)
        
        leaderTableView.layer.cornerRadius = 50
        leaderTableView.translatesAutoresizingMaskIntoConstraints = false
        leaderTableView.leadingAnchor.constraint(equalTo: newView.leadingAnchor, constant: 0).isActive = true
        leaderTableView.trailingAnchor.constraint(equalTo: newView.trailingAnchor, constant: 0).isActive = true
        leaderTableView.topAnchor.constraint(equalTo: newView.topAnchor, constant: 0).isActive = true
        leaderTableView.bottomAnchor.constraint(equalTo: newView.bottomAnchor, constant: 0).isActive = true

    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        40
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelLeaders.arrayOfLeaders.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: leadersID) as! LeadersTableViewCell

        cell.backgroundColor = .tertiaryLabel

        let someLeader = modelLeaders.arrayOfLeaders[indexPath.row]

        cell.labelLeader.text = someLeader.leader
        cell.numerOfGroup.text = someLeader.numberOfGroup
        
        cell.labelLeader.textColor = .darkGray
        cell.numerOfGroup.textColor = .darkGray
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let subject = modelLeaders.arrayOfLeaders
        if subject[0] == subject[indexPath.row] {
            UIApplication.shared.open(URL(string: "https://t.me/anpudova")!)
        } else if subject[1] == subject[indexPath.row] {
            UIApplication.shared.open(URL(string: "https://t.me/Daniils1406")!)
        } else if subject[2] == subject[indexPath.row] {
            UIApplication.shared.open(URL(string: "https://t.me/almini_m")!)
        } else if subject[3] == subject[indexPath.row] {
            UIApplication.shared.open(URL(string: "https://t.me/t_talova")!)
        } else if subject[4] == subject[indexPath.row] {
            UIApplication.shared.open(URL(string: "https://t.me/pheodal")!)
        } else if subject[5] == subject[indexPath.row] {
            UIApplication.shared.open(URL(string: "https://t.me/vezdesyshiy")!)
        } else if subject[6] == subject[indexPath.row] {
            UIApplication.shared.open(URL(string: "https://t.me/Friendly_Valya")!)
        } else if subject[7] == subject[indexPath.row] {
            UIApplication.shared.open(URL(string: "https://t.me/radmirfazlyev")!)
        } else if subject[8] == subject[indexPath.row] {
            UIApplication.shared.open(URL(string: "https://t.me/KreoManser")!)
        } else if subject[9] == subject[indexPath.row] {
            UIApplication.shared.open(URL(string: "https://t.me/Adel_Gilfanov")!)
        } else if subject[10] == subject[indexPath.row] {
            UIApplication.shared.open(URL(string: "https://t.me/vitstark")!)
        } else if subject[11] == subject[indexPath.row] {
            UIApplication.shared.open(URL(string: "https://t.me/hairullinakarina")!)
        } else if subject[12] == subject[indexPath.row] {
            UIApplication.shared.open(URL(string: "https://t.me/Peace_e")!)
        }
    }
}

