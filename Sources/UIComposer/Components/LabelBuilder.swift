import UIKit

enum LabelStyle {
    case title
    case subtitle
    case body
    case caption
}


final class LabelBuilder {
    private var label = UILabel()
    
    func withTAMIC(_ activate: Bool) -> Self {
        label.translatesAutoresizingMaskIntoConstraints = activate
        return self
    }
    
    func withText(_ text: String) -> Self {
        label.text = text
        return self
    }
    
    func withStyle(_ labelStyle: LabelStyle) -> Self {
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
    
    func withMultiline(_ activate: Bool) -> Self {
        if activate {
            label.numberOfLines = 0
        }
        return self
    }
    
    func withTextColor(_ color: UIColor) -> Self {
        label.textColor = color
        return self
    }
    
    func build() -> UILabel {
        label
    }
}
