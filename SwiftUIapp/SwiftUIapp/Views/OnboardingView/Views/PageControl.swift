//
//  PageControl.swift
//  SwiftUIapp
//
//  Created by Віктор Савицький on 30.03.2024.
//

import SwiftUI

struct PageControl: UIViewRepresentable {
    let numberOfPages: Int
    var current = 0
    
    func makeUIView(context: UIViewRepresentableContext<PageControl>) -> UIPageControl {
        let pager = UIPageControl()
        pager.currentPageIndicatorTintColor = .white
        pager.pageIndicatorTintColor = .gray
        pager.numberOfPages = numberOfPages
        return pager
    }
    
    func updateUIView(_ uiView: UIPageControl, context: UIViewRepresentableContext<PageControl>) {
        uiView.currentPage = current
    }
}
