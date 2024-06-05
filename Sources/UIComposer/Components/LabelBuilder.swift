import UIKit

public enum LabelStyle {
    case title
    case subtitle
    case body
    case caption
}


public final class LabelBuilder {
    private var label = UILabel()
    
    public func withTAMIC(_ activate: Bool) -> Self {
        label.translatesAutoresizingMaskIntoConstraints = activate
        return self
    }
    
    public func withText(_ text: String) -> Self {
        label.text = text
        return self
    }
    
    public func withStyle(_ labelStyle: LabelStyle) -> Self {
        switch labelStyle {
        case .title:
            label.font = .boldSystemFont(ofSize: 24)
            label.textColor = .black
            label.backgroundColor = .clear
        case .subtitle:
            label.font = .systemFont(ofSize: 18)
            label.textColor = .darkGray
            label.backgroundColor = .clear
        case .body:
            label.font = .systemFont(ofSize: 16)
            label.textColor = .gray
            label.backgroundColor = .clear
        case .caption:
            label.font = .systemFont(ofSize: 12)
            label.textColor = .lightGray
            label.backgroundColor = .clear
        }
        return self
    }
    
    public func withMultiline(_ activate: Bool) -> Self {
        if activate {
            label.numberOfLines = 0
        }
        return self
    }
    
    public func withTextColor(_ color: UIColor) -> Self {
        label.textColor = color
        return self
    }
    
    public func build() -> UILabel {
        label
    }
}
