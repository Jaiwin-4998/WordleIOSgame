
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonSubmit: UIButton!
    
    @IBOutlet weak var labelLineOnePositionFirst: UILabel!
    @IBOutlet weak var labelLineOnePositionSecond: UILabel!
    @IBOutlet weak var labelLineOnePositionThird: UILabel!
    @IBOutlet weak var labelLineOnePositionFourth: UILabel!
    @IBOutlet weak var labelLineOnePositionFifth: UILabel!
    
    @IBOutlet weak var labelLineTwoPositionFirst: UILabel!
    @IBOutlet weak var labelLineTwoPositionSecond: UILabel!
    @IBOutlet weak var labelLineTwoPositionThird: UILabel!
    @IBOutlet weak var labelLineTwoPositionFourth: UILabel!
    @IBOutlet weak var labelLineTwoPositionFifth: UILabel!
    
    @IBOutlet weak var labelLineThreePositionFirst: UILabel!
    @IBOutlet weak var labelLineThreePositionSecond: UILabel!
    @IBOutlet weak var labelLineThreePositionThird: UILabel!
    @IBOutlet weak var labelLineThreePositionFourth: UILabel!
    @IBOutlet weak var labelLineThreePositionFifth: UILabel!
    
    @IBOutlet weak var labelLineFourPositionFirst: UILabel!
    @IBOutlet weak var labelLineFourPositionSecond: UILabel!
    @IBOutlet weak var labelLineFourPositionThird: UILabel!
    @IBOutlet weak var labelLineFourPositionFourth: UILabel!
    @IBOutlet weak var labelLineFourPositionFifth: UILabel!
    
    @IBOutlet weak var labelLineFivePositionFirst: UILabel!
    @IBOutlet weak var labelLineFivePositionSecond: UILabel!
    @IBOutlet weak var labelLineFivePositionThird: UILabel!
    @IBOutlet weak var labelLineFivePositionFourth: UILabel!
    @IBOutlet weak var labelLineFivePositionFifth: UILabel!
    
    @IBOutlet weak var labelLineSixPositionFirst: UILabel!
    @IBOutlet weak var labelLineSixPositionSecond: UILabel!
    @IBOutlet weak var labelLineSixPositionThird: UILabel!
    @IBOutlet weak var labelLineSixPositionFourth: UILabel!
    @IBOutlet weak var labelLineSixPositionFifth: UILabel!
    
    
    var arrSpelling = [String]()
    var strValue: String = ""
    var arrValue = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrSpelling = ["hears", "loses", "hosts", "diver", "phase", "toads", "alert", "tasks", "seams", "coral", "focus", "socks", "urban", "goals", "grant", "minus", "films", "tunes", "shaft", "firms", "skies", "bride", "wreck", "flock", "stare", "hobby", "bonds", "dared", "vines", "picks", "naval", "purse", "rigid", "crawl", "toast", "soils", "sauce", "basin", "ponds", "essay", "thump", "hangs", "bliss", "dealt", "gains", "bombs", "clown", "palms", "cones", "roast", "tidal", "bored", "chant", "acids", "scout", "acute", "windy", "stout", "folds", "seize", "hilly", "joins", "pluck", "stack", "lords", "dunes", "burro", "hawks", "trout", "feeds", "scarf", "halls", "coals", "towel", "souls", "elect", "buggy", "pumps", "loans", "spins"]
        
    }
    
    func gameLogic(title: String) {
        self.strValue = strValue + title
        if self.strValue.count < 5 {
            self.buttonSubmit.isUserInteractionEnabled = false
            self.buttonSubmit.setTitleColor(.black.withAlphaComponent(0.5), for: .normal)
            self.buttonSubmit.setTitle("SUBMIT", for: .normal)
            
        } else {
            self.buttonSubmit.isUserInteractionEnabled = true
            
            if arrSpelling.contains(strValue.lowercased()) {
                self.buttonSubmit.setTitleColor(.black, for: .normal)
                self.buttonSubmit.setTitle("SUBMIT", for: .normal)
            } else {
                self.buttonSubmit.setTitleColor(.red, for: .normal)
                self.buttonSubmit.setTitle("NOT A WORD", for: .normal)
            }
        }
        self.setValueToLabel()
    }
    
    func setValueToLabel() {
        if self.arrValue.count == 0 {
            let values = self.strValue.map { String($0) }
            if values.indices.contains(0) {
                self.labelLineOnePositionFirst.text = values[0]
            } else {
                self.labelLineOnePositionFirst.text = ""
            }
            
            if values.indices.contains(1) {
                self.labelLineOnePositionSecond.text = values[1]
            } else {
                self.labelLineOnePositionSecond.text = ""
            }
            
            if values.indices.contains(2) {
                self.labelLineOnePositionThird.text = values[2]
            } else {
                self.labelLineOnePositionThird.text = ""
            }
            
            if values.indices.contains(3) {
                self.labelLineOnePositionFourth.text = values[3]
            } else {
                self.labelLineOnePositionFourth.text = ""
            }
            
            if values.indices.contains(4) {
                self.labelLineOnePositionFifth.text = values[4]
            } else {
                self.labelLineOnePositionFifth.text = ""
            }
        } else if self.arrValue.count == 1 {
            
            let values = self.strValue.map { String($0) }
            if values.indices.contains(0) {
                self.labelLineTwoPositionFirst.text = values[0]
            } else {
                self.labelLineTwoPositionFirst.text = ""
            }
            
            if values.indices.contains(1) {
                self.labelLineTwoPositionSecond.text = values[1]
            } else {
                self.labelLineTwoPositionSecond.text = ""
            }
            
            if values.indices.contains(2) {
                self.labelLineTwoPositionThird.text = values[2]
            } else {
                self.labelLineTwoPositionThird.text = ""
            }
            
            if values.indices.contains(3) {
                self.labelLineTwoPositionFourth.text = values[3]
            } else {
                self.labelLineTwoPositionFourth.text = ""
            }
            
            if values.indices.contains(4) {
                self.labelLineTwoPositionFifth.text = values[4]
            } else {
                self.labelLineTwoPositionFifth.text = ""
            }
        } else if self.arrValue.count == 2 {
            let values = self.strValue.map { String($0) }
            if values.indices.contains(0) {
                self.labelLineThreePositionFirst.text = values[0]
            } else {
                self.labelLineThreePositionFirst.text = ""
            }
            
            if values.indices.contains(1) {
                self.labelLineThreePositionSecond.text = values[1]
            } else {
                self.labelLineThreePositionSecond.text = ""
            }
            
            if values.indices.contains(2) {
                self.labelLineThreePositionThird.text = values[2]
            } else {
                self.labelLineThreePositionThird.text = ""
            }
            
            if values.indices.contains(3) {
                self.labelLineThreePositionFourth.text = values[3]
            } else {
                self.labelLineThreePositionFourth.text = ""
            }
            
            if values.indices.contains(4) {
                self.labelLineThreePositionFifth.text = values[4]
            } else {
                self.labelLineThreePositionFifth.text = ""
            }
        } else if self.arrValue.count == 3 {
            let values = self.strValue.map { String($0) }
            if values.indices.contains(0) {
                self.labelLineFourPositionFirst.text = values[0]
            } else {
                self.labelLineFourPositionFirst.text = ""
            }
            
            if values.indices.contains(1) {
                self.labelLineFourPositionSecond.text = values[1]
            } else {
                self.labelLineFourPositionSecond.text = ""
            }
            
            if values.indices.contains(2) {
                self.labelLineFourPositionThird.text = values[2]
            } else {
                self.labelLineFourPositionThird.text = ""
            }
            
            if values.indices.contains(3) {
                self.labelLineFourPositionFourth.text = values[3]
            } else {
                self.labelLineFourPositionFourth.text = ""
            }
            
            if values.indices.contains(4) {
                self.labelLineFourPositionFifth.text = values[4]
            } else {
                self.labelLineFourPositionFifth.text = ""
            }
        } else if self.arrValue.count == 4 {
            let values = self.strValue.map { String($0) }
            if values.indices.contains(0) {
                self.labelLineFivePositionFirst.text = values[0]
            } else {
                self.labelLineFivePositionFirst.text = ""
            }
            
            if values.indices.contains(1) {
                self.labelLineFivePositionSecond.text = values[1]
            } else {
                self.labelLineFivePositionSecond.text = ""
            }
            
            if values.indices.contains(2) {
                self.labelLineFivePositionThird.text = values[2]
            } else {
                self.labelLineFivePositionThird.text = ""
            }
            
            if values.indices.contains(3) {
                self.labelLineFivePositionFourth.text = values[3]
            } else {
                self.labelLineFivePositionFourth.text = ""
            }
            
            if values.indices.contains(4) {
                self.labelLineFivePositionFifth.text = values[4]
            } else {
                self.labelLineFivePositionFifth.text = ""
            }
        } else {
            let values = self.strValue.map { String($0) }
            if values.indices.contains(0) {
                self.labelLineSixPositionFirst.text = values[0]
            } else {
                self.labelLineSixPositionFirst.text = ""
            }
            
            if values.indices.contains(1) {
                self.labelLineSixPositionSecond.text = values[1]
            } else {
                self.labelLineSixPositionSecond.text = ""
            }
            
            if values.indices.contains(2) {
                self.labelLineSixPositionThird.text = values[2]
            } else {
                self.labelLineSixPositionThird.text = ""
            }
            
            if values.indices.contains(3) {
                self.labelLineSixPositionFourth.text = values[3]
            } else {
                self.labelLineSixPositionFourth.text = ""
            }
            
            if values.indices.contains(4) {
                self.labelLineSixPositionFifth.text = values[4]
            } else {
                self.labelLineSixPositionFifth.text = ""
            }
        }
    }
    
    func removeLastCharacter() {
        print(self.strValue.count)
        if self.strValue.count != 0 {
            self.strValue.removeLast()
        }
        self.gameLogic(title: "")
        self.setValueToLabel()
    }
    
    @IBAction func buttonSubmitClick(_ sender: UIButton) {
        if arrSpelling.contains(strValue.lowercased()) {
            arrValue.append(strValue)
            self.strValue.removeAll()
        }
        
        if self.arrSpelling == self.arrSpelling {
            labelLineOnePositionFirst.backgroundColor = UIColor.green;
            labelLineOnePositionSecond.backgroundColor = UIColor.green;
            labelLineOnePositionThird.backgroundColor = UIColor.green;
            labelLineOnePositionFourth.backgroundColor = UIColor.green;
            labelLineOnePositionFifth.backgroundColor = UIColor.green;
            let alert = UIAlertController(title: "YAY...!", message: "You won the game", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            }))
            self.present(alert, animated: true, completion: nil)

        }
    }
    
    @IBAction func buttonQClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonWClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonEClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonRClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonTClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonYClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonUClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonIClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonOClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonPClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonAClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonSClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonDClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonFClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonGClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonHClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonJClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonKClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonLClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonZClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonXClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonCClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonVClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonBClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonNClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonMClick(_ sender: UIButton) {
        self.gameLogic(title: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func buttonRemoveClick(_ sender: UIButton) {
        self.removeLastCharacter()
    }
    
}

@IBDesignable extension UIView {
    

    @IBInspectable
    var viewCornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.masksToBounds = newValue > 0
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        get {
            
            let color = UIColor(cgColor: layer.borderColor!)
            return color
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
}

