//
//  ViewController.swift
//  NatifeTask3
//
//  Created by Nazar on 30.03.2026.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: - Properties

    private var tabsView1: TabsView = {
        let tabsView = TabsView()
        tabsView.configure(with: Constant.tabsItems1, selectedIndex: 0)
        return tabsView
    }()

    private var tabsView2: TabsView = {
        let tabsView = TabsView()
        tabsView.configure(with: Constant.tabsItems2, selectedIndex: 1)
        return tabsView
    }()

    private var tabsView3: TabsView = {
        let tabsView = TabsView()
        tabsView.configure(with: Constant.tabsItems3, selectedIndex: 2)
        return tabsView
    }()

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
        view.addSubview(tabsView1)
        view.addSubview(tabsView2)
        view.addSubview(tabsView3)
        view.backgroundColor = .white
    }
}

private extension ViewController {
    func setupLayout() {
        view.disableAutoresizing(tabsView1)
        view.disableAutoresizing(tabsView2)
        view.disableAutoresizing(tabsView3)

        NSLayoutConstraint.activate([
            tabsView1.heightAnchor.constraint(equalToConstant: 60),
            tabsView1.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tabsView1.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tabsView1.centerYAnchor.constraint(equalTo: view.centerYAnchor),

            tabsView2.heightAnchor.constraint(equalToConstant: 60),
            tabsView2.topAnchor.constraint(equalTo: tabsView1.bottomAnchor, constant: 20),
            tabsView2.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tabsView2.trailingAnchor.constraint(equalTo: view.trailingAnchor),

            tabsView3.heightAnchor.constraint(equalToConstant: 60),
            tabsView3.topAnchor.constraint(equalTo: tabsView2.bottomAnchor, constant: 20),
            tabsView3.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tabsView3.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}

private extension ViewController {
    enum Constant {
        static let tabsItems1 = ["All", "Work", "Friends", "Foods", "Games", "Guns", "Sweets"]
        static let tabsItems2 = ["All", "Work", "Friends", "Foods", "Games" ]
        static let tabsItems3 = ["All", "Work", "Friends"]
    }
}
