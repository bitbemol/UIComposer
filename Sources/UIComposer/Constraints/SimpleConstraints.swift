import UIKit

public enum Padding {
    case vertical(top: CGFloat, bottom: CGFloat)
    case horizontal(leading: CGFloat, trailing: CGFloat)
}

public struct SimpleConstraints {
    /// Set the new view to all sides of the super view
    public func stickToAllSides(for newView: UIView, to view: UIView, with padding: CGFloat = 0) -> [NSLayoutConstraint] {
        [
            newView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding),
            newView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: padding),
            newView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -padding),
            newView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -padding),
        ]
    }
    
    /// Set subsequent views to the given view, use superView to stick the new view to the horizontal of the super view
    public func stickTop(of newView: UIView, to view: UIView, with separation: CGFloat = 0, superView: UIView, padding: Padding?) -> [NSLayoutConstraint]  {
        if case let .horizontal(leading, trailing) = padding {
            return [
                newView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: separation),
                newView.leadingAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.leadingAnchor, constant: leading),
                newView.trailingAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.trailingAnchor, constant: -trailing),
                
            ]
        }
        return [
            newView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: separation),
            newView.leadingAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.leadingAnchor),
            newView.trailingAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.trailingAnchor),
            
        ]
    }
    
    /// Set the first view to the super view
    public func stickTop(of newView: UIView, to superView: UIView, with separation: CGFloat = 0, padding: Padding?) -> [NSLayoutConstraint]  {
        if case let .horizontal(leading, trailing) = padding {
            return [
                newView.topAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.bottomAnchor, constant: separation),
                newView.leadingAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.leadingAnchor, constant: leading),
                newView.trailingAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.trailingAnchor, constant: -trailing),
                
            ]
        }
        return [
            newView.topAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.bottomAnchor, constant: separation),
            newView.leadingAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.leadingAnchor),
            newView.trailingAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.trailingAnchor),
            
        ]
    }
    
    /// Set the given view to the super view center
    public func stickToCenter(of superView: UIView, view: UIView) -> [NSLayoutConstraint] {
        [
            view.centerXAnchor.constraint(equalTo: superView.centerXAnchor),
            view.centerYAnchor.constraint(equalTo: superView.centerYAnchor)
        ]
    }
}
