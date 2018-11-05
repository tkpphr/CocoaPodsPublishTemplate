import Foundation
import UIKit

public class HelloLabel : UIView{
    @IBOutlet private weak var label: UILabel!
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadNib()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.loadNib()
    }
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        class dummy {}
        var bundle = Bundle(for: type(of: dummy()))
        if let path = bundle.path(forResource: "CocoaPodsPublishTemplate", ofType: "bundle"){
            bundle = Bundle(path: path)!
        }
        self.label.text = bundle.localizedString(forKey: "hello", value: nil, table: nil)
    }
    
    private func loadNib() {
        var bundle = Bundle(for: type(of: self))
        if let path = bundle.path(forResource: "CocoaPodsPublishTemplate", ofType: "bundle"){
            bundle = Bundle(path: path)!
        }
        let nib = UINib(nibName: "HelloLabel", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
    }
}
