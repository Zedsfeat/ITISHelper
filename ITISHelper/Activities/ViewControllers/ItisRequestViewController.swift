import UIKit

class ItisRequestViewController: UIViewController {

  
    
    @IBOutlet weak var postText: UITextView!
    @IBOutlet weak var postInofButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    public var postIndex = 0
    
    let posts = getVkPosts()

    override func viewDidLoad() {
        super.viewDidLoad()
        postText.text = posts[postIndex][0]

    }
    @IBAction func postInfoButtonAction(_ sender: Any) {
        if let url = NSURL(string: posts[postIndex][1]){
            UIApplication.shared.openURL(url as URL)
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
