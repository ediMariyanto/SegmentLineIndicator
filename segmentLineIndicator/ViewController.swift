import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segment: SegmentLineIndicator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segment.initUI()
        segment.selectedSegmentIndex = 0
    }


}

