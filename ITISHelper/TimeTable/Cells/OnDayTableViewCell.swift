import UIKit

class OnDayTableViewCell: UITableViewCell {

    @IBOutlet weak var labelTime: UILabel!
    @IBOutlet weak var labelRoom: UILabel!
    @IBOutlet weak var labelSubject: UILabel!
    @IBOutlet weak var labelTeacher: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
