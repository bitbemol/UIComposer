import UIKit

public final class TextFieldBuilder {
    private var textField = UITextField()
    
    public init() { }
    
    public func setTamic(_ active: Bool) -> Self {
        textField.translatesAutoresizingMaskIntoConstraints = active
        return self
    }
    
    public func withPlaceholder(_ placeholder: String) -> Self {
        textField.placeholder = placeholder
        return self
    }
    
    public func withDelegate(_ delegate: UITextFieldDelegate) -> Self {
        textField.delegate = delegate
        return self
    }
    
    public func withBorderStyle(_ style: UITextField.BorderStyle) -> Self {
        textField.borderStyle = style
        return self
    }
    
    public func build() -> UITextField {
        textField
    }
}
