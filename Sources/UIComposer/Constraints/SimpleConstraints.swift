import UIKit

public enum Padding {
    case vertical(top: CGFloat, bottom: CGFloat)
    case horizontal(leading: CGFloat, trailing: CGFloat)
}

enum SimpleConstraintsError: Error {
    case missingSuperView
}

public struct SimpleConstraints {
    
    public init() { }
    
    /// Set the new view to all sides of the super view
    public func stickToAllSides(for newView: UIView, to view: UIView, with padding: CGFloat = 0) -> [NSLayoutConstraint] {
        [
            newView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding),
            newView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: padding),
            newView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -padding),
            newView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -padding),
        ]
    }
    
    /// Set subsequent views to the given view, use superView to stick the new view to the horizontal of the super view.  If no superview is set then this will throws an error.
    public func stickTop(of newView: UIView, to view: UIView, with separation: CGFloat = 0, padding: Padding?) throws -> [NSLayoutConstraint]  {
        guard let superview = newView.superview else { throw SimpleConstraintsError.missingSuperView }
        if case let .horizontal(leading, trailing) = padding {
            return [
                newView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: separation),
                newView.leadingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.leadingAnchor, constant: leading),
                newView.trailingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.trailingAnchor, constant: -trailing),
                
            ]
        }
        return [
            newView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: separation),
            newView.leadingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.leadingAnchor),
            newView.trailingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.trailingAnchor),
            
        ]
    }
    
    /// Set the first view to the super view.  If no superview is set then this will throws an error.
    public func stickTop(of newView: UIView, with separation: CGFloat = 0, padding: Padding?) throws -> [NSLayoutConstraint]  {
        guard let superview = newView.superview else { throw SimpleConstraintsError.missingSuperView }
        if case let .horizontal(leading, trailing) = padding {
            return [
                newView.topAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.topAnchor, constant: separation),
                newView.leadingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.leadingAnchor, constant: leading),
                newView.trailingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.trailingAnchor, constant: -trailing),
                
            ]
        }
        return [
            newView.topAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.topAnchor, constant: separation),
            newView.leadingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.leadingAnchor),
            newView.trailingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.trailingAnchor),
            
        ]
    }
    
    /// Set subsequent views to the given view, centering the new view to the x center. If no superview is set then this will throws an error.
    public func stickCentrallyTop(of newView: UIView, to view: UIView, with separation: CGFloat = 0) throws -> [NSLayoutConstraint] {
        guard let superview = newView.superview else { throw SimpleConstraintsError.missingSuperView }
        return [
            newView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: separation),
            newView.centerXAnchor.constraint(equalTo: superview.centerXAnchor)
        ]
    }
    
    /// Set the given view to the super view center. If no superview is set then this will throws an error.
    public func stickToCenter(_ view: UIView) throws -> [NSLayoutConstraint] {
        guard let superview = view.superview else { throw SimpleConstraintsError.missingSuperView }
        return [
            view.centerXAnchor.constraint(equalTo: superview.centerXAnchor),
            view.centerYAnchor.constraint(equalTo: superview.centerYAnchor)
        ]
    }
    
    public func stickUsingRemainingSpaceTop(of newView: UIView, to view: UIView, with separation: CGFloat = 0, padding: Padding?) throws -> [NSLayoutConstraint] {
        guard let superview = view.superview else { throw SimpleConstraintsError.missingSuperView }
        if case let .horizontal(leading, trailing) = padding {
            return [
                newView.topAnchor.constraint(equalTo: view.bottomAnchor, constant: separation),
                newView.leadingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.leadingAnchor, constant: leading),
                newView.trailingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.trailingAnchor, constant: trailing),
                newView.bottomAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.bottomAnchor)
            ]
        }
        return [
            newView.topAnchor.constraint(equalTo: view.bottomAnchor, constant: separation),
            newView.leadingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.leadingAnchor),
            newView.trailingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.trailingAnchor),
            newView.bottomAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.bottomAnchor)
        ]
    }
}
