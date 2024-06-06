import UIKit

public final class SearchBarBuilder {
    private var searchBar = UISearchBar()
    
    public init() { }
    
    public func withAutoLayout() -> Self {
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    
    public func withDelegate(_ delegate: UISearchBarDelegate) -> Self {
        searchBar.delegate = delegate
        return self
    }
    
    public func build() -> UISearchBar {
        searchBar
    }
}
