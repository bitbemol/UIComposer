import UIKit

public final class StackBuilder {
    private var stack = UIStackView()
    
    public init() { }
    
    public func withAutoLayout() -> Self {
        stack.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    
    public func withAxis(_ axis: NSLayoutConstraint.Axis) -> Self {
        stack.axis = axis
        return self
    }
    
    public func withDistribution(_ distribution: UIStackView.Distribution) -> Self {
        stack.distribution = distribution
        return self
    }
    
    public func build() -> UIStackView {
        stack
    }
}
