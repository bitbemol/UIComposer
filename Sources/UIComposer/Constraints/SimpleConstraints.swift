import UIKit

public struct SimpleConstraints {
    /// Set the new view to all sides of the super view
    static public func stickToAllSides(for newView: UIView, to view: UIView, with padding: CGFloat = 0) -> [NSLayoutConstraint] {
        [
            newView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding),
            newView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: padding),
            newView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -padding),
            newView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -padding),
        ]
    }
    
    /// Set subsequent views to the given view, use superView to stick the new view to the horizontal of the super view
    static public func stickTop(of newView: UIView, to view: UIView, with padding: CGFloat = 0, superView: UIView) -> [NSLayoutConstraint]  {
        [
            newView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: padding),
            newView.leadingAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.leadingAnchor, constant: padding),
            newView.trailingAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.trailingAnchor, constant: -padding),
            
        ]
    }
    
    /// Set the first view to the super view
    static public func stickTop(of newView: UIView, to superView: UIView, with padding: CGFloat = 0) -> [NSLayoutConstraint]  {
        [
            newView.topAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.bottomAnchor, constant: padding),
            newView.leadingAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.leadingAnchor, constant: padding),
            newView.trailingAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.trailingAnchor, constant: -padding),
            
        ]
    }
    
    /// Set the given view to the super view center
    static public func stickToCenter(of superView: UIView, view: UIView) -> [NSLayoutConstraint] {
        [
            view.centerXAnchor.constraint(equalTo: superView.centerXAnchor),
            view.centerYAnchor.constraint(equalTo: superView.centerYAnchor)
        ]
    }
}
