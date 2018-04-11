
import UIKit

class ViewController: UIViewController {

    let timeSelector: Selector = #selector(ViewController.update)
    let interval = 1.0
    var count = 0
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var datepiker: UIDatePicker!
    @IBOutlet weak var time2Label: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func DatePiker(_ sender: UIDatePicker) {
        let datePikerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss a EE"
        timeLabel.text = "선택시간: " + formatter.string(from: datePikerView.date)
    }
    
    @objc func update() {
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss a EE"
        time2Label.text = "현재시간: " + formatter.string(from: date as Date)
    }
}
