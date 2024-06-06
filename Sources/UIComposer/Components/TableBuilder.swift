import UIKit

public final class TableBuilder {
    private var table = UITableView()
    
    public init() { }
    
    public func withAutoLayout() -> Self {
        table.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    
    public func withDelegate(_ delegate: UITableViewDelegate) -> Self {
        table.delegate = delegate
        return self
    }
    
    public func build() -> UITableView {
        table
    }

}
