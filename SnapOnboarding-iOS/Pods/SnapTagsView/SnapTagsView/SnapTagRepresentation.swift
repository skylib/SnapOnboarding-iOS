import Foundation

open class SnapTagRepresentation : NSObject {
    open var tag : String = ""
    open var isOn : Bool = true
    
    public override init() {
        
    }
    
    public init(tag: String, isOn: Bool = true) {
        self.tag = tag
        self.isOn = isOn
    }
}
