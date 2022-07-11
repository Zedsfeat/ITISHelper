import UIKit

class MyGroupViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var myGroupTableView: UITableView!
    let myGroupID = "MyGroupTableViewCell"
    var modelMyGroup = ModelHelp()

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpTableView()
        myGroupTableView.backgroundColor = .white
        myGroupTableView.separatorStyle = .singleLine
        myGroupTableView.separatorColor = .darkGray

        myGroupTableView.dataSource = self
        myGroupTableView.delegate = self

        modelMyGroup.setUpMyGroup() // Инициализация группы

    }


    func setUpTableView() {
        myGroupTableView.layer.cornerRadius = 10
        myGroupTableView.translatesAutoresizingMaskIntoConstraints = false
        myGroupTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        myGroupTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        myGroupTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        myGroupTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true

    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        40
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelMyGroup.arrayOfMyGroupmates.count
    }


    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        50
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let returnedView = UIView()


        let label = UILabel(frame: CGRect(x: 46, y: 0, width: 280, height: 50))

        label.textAlignment = .center
        label.numberOfLines = 0
        label.text = "11-104"
        label.textColor = .gray
        label.font = UIFont.boldSystemFont(ofSize: 30)

        returnedView.addSubview(label)

        return returnedView
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: myGroupID) as! MyGroupTableViewCell

        cell.backgroundColor = .tertiaryLabel

        let someGroupmate = modelMyGroup.arrayOfMyGroupmates[indexPath.row]

        cell.labelStudenFIO.text = someGroupmate.studentFIO
        cell.number.text = someGroupmate.number
        
        cell.labelStudenFIO.textColor = .darkGray
        cell.number.textColor = .darkGray
        
        
        
        return cell
    }
}
