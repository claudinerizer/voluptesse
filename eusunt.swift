import UIKit

class ParentViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create the parent view
        let parentView = UIView()
        parentView.backgroundColor = .lightGray
        parentView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(parentView)
        
        // Create a subview
        let subview = UIView()
        subview.backgroundColor = .blue
        subview.translatesAutoresizingMaskIntoConstraints = false
        parentView.addSubview(subview)
        
        // Force the position and size of the subview using Auto Layout constraints
        NSLayoutConstraint.activate([
            subview.centerXAnchor.constraint(equalTo: parentView.centerXAnchor),
            subview.centerYAnchor.constraint(equalTo: parentView.centerYAnchor),
            subview.widthAnchor.constraint(equalToConstant: 100),
            subview.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        // Force the position and size of the parent view using Auto Layout constraints
        NSLayoutConstraint.activate([
            parentView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            parentView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            parentView.widthAnchor.constraint(equalToConstant: 300),
            parentView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
}
