import UIKit

public final class ImageBuilder {
    private var image = UIImageView()
    
    public init() { }
    
    public func withAutoLayout() -> Self {
        image.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    
    public func withContentMode(_ mode: UIView.ContentMode) -> Self {
        image.contentMode = mode
        return self
    }
    
    public func withClipToBound(_ activate: Bool) -> Self {
        image.clipsToBounds = activate
        return self
    }
    
    public func withImage(_ imageName: String) -> Self {
        image.image = UIImage(named: imageName)
        return self
    }
    
    public func build() -> UIImageView {
        image
    }
}
