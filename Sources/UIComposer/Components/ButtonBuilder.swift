import UIKit

public final class ButtonBuilder {
    private var button = UIButton()
    
    public init() { }
    
    public func withAutoLayout() -> Self {
        button.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    
    public func withTitle(for state: UIControl.State = .normal, _ title: String) -> Self {
        button.setTitle(title, for: state)
        return self
    }
    
    public func withBackgroundColor(_ color: UIColor) -> Self {
        button.backgroundColor = color
        return self
    }
    
    public func withStyle(_ style: UIButton.Configuration) -> Self {
        button.configuration = style
        return self
    }
    
    public func withAction(for touch: UIControl.Event = .touchUpInside ,_ closure: @escaping () -> Void) -> Self {
        let action = UIAction { _ in closure() }
        button.addAction(action, for: touch)
        return self
    }
    
    public func build() -> UIButton {
        button
    }
}
