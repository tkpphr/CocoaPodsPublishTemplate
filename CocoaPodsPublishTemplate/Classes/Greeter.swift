import Foundation

public class Greeter {
    public class func hello(){
        class dummy {}
        var bundle = Bundle(for: type(of: dummy()))
        if let path = bundle.path(forResource: "CocoaPodsPublishTemplate", ofType: "bundle"){
            bundle = Bundle(path: path)!
        }
        print(bundle.localizedString(forKey: "hello", value: nil, table: nil))
    }
    
}
