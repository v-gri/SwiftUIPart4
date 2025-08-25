//
//  ViewController.swift
//  SwiftUIPart4
//
//  Created by Vika on 24.08.25.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        let button = UIButton(frame: CGRect(x: 150, y: 200, width: 100, height: 50))
        button.setTitle("Show SwiftUI", for: .normal)
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(showSwiftUIView), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func showSwiftUIView() {
        let swiftUIView = UIHostingController(rootView: SwiftUIView())
        swiftUIView.modalPresentationStyle = .fullScreen
        present(swiftUIView, animated: true)
    }
}
