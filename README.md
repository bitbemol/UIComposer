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

final class ViewController: UIViewController {
    
    private var counter = 0
    
    // Using LabelBuilder to create a label
    private lazy var label = LabelBuilder()
        .withStyle(.title)
        .withAutoLayout()
        .withText("Button Pressed \(counter) times")
        .build()
    
    // Using ButtonBuilder to create a button
    private lazy var button = ButtonBuilder()
        .withAction { [weak self] in
            guard let self = self else { return }
            self.counter += 1
            self.label.text = "Button Pressed \(self.counter) times"
        }
        .withAutoLayout()
        .withStyle(.bordered())
        .withTitle(for: .normal, "Press me")
        .build()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(label)
        view.addSubview(button)
        
        // Setting up layout constraints
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 32)
        ])
    }
}

// Canvas preview, iOS 17+
#Preview {
    ViewController()
}

```




## Contribution

Contributions are welcome! Please fork the repository and submit a pull request with your improvements.

## License

UIComposer is released under the MIT license. See LICENSE for details.
