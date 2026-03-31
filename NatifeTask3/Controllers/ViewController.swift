//
//  ViewController.swift
//  NatifeTask3
//
//  Created by Nazar on 30.03.2026.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: - Properties

    private let tabsView = TabsView()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLayout()
    }
}

// MARK: - Private Methods

private extension ViewController {
    func setupView() {
        view.addSubview(tabsView)
        view.backgroundColor = .white
    }
}

private extension ViewController {
    func setupLayout() {
        view.disableAutoresizing(tabsView)

        NSLayoutConstraint.activate([
            tabsView.heightAnchor.constraint(equalToConstant: 60),
            tabsView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tabsView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tabsView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
