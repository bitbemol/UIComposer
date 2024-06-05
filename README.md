# UIComposer

UIComposer is a simple package that provides a collection of UIKit builders, offering common configuration options for creating UI components with ease. UIComposer helps you streamline the setup of UILabel, UIButton, and other UIKit elements by providing a fluent API for setting common properties, making your code cleaner and more maintainable.

## Features

- Fluent API: Easily configure UIKit components with a chainable interface.
- Common Styles: Predefined styles for labels, buttons, and more, ensuring consistency across your app.
- Customization: Override default styles with custom configurations as needed. (Planned for future versions)
- Ease of Use: Simplifies the creation of UI elements, reducing boilerplate code.

## Installation

Add UIComposer to your project using Swift Package Manager. In Xcode, select `File > Swift Packages > Add Package Dependency`, and enter the repository URL.

## Usage

```swift
import UIComposer
import UIKit

class ViewController: UIViewController {
    
    let label = LabelBuilder()
        .withStyle(.title)
        .withTAMIC(false)
        .withText("Hello Builder")
        .build()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

  
#Preview {
    ViewController()
}
```

## Contribution

Contributions are welcome! Please fork the repository and submit a pull request with your improvements.

## License

UIComposer is released under the MIT license. See LICENSE for details.
