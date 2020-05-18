//
//  PageControlViewController.swift
//  OnBoarding2
//
//  Created by Muhammad Rasyid khaikal on 15/05/20.
//  Copyright © 2020 Muhammad Rasyid khaikal. All rights reserved.
//

import UIKit

class PageControlViewController: UIPageViewController,UIPageViewControllerDataSource,UIPageViewControllerDelegate {

    
    lazy var orderedViewControllers : [UIViewController] = {
        return [ self.newVC(viewController : "screenOne"),
                self.newVC(viewController : "screenTwo"),
                self.newVC(viewController : "screenThree")
        ]
    }()
    var pageControl = UIPageControl()
    override func viewDidLoad() {
        super.viewDidLoad()

        self.dataSource = self
        self.delegate = self
        
        if let firstViewController = orderedViewControllers.first {
            
            setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }
        configurePageControl()
    }
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        let pageContentViewController = pageViewController.viewControllers![0]
        self.pageControl.currentPage = orderedViewControllers.lastIndex(of: pageContentViewController)!
    }
    func configurePageControl(){
        pageControl = UIPageControl(frame: CGRect(x: 0, y: UIScreen.main.bounds.maxY - 50 , width: UIScreen.main.bounds.width, height: 50))
        pageControl.numberOfPages = orderedViewControllers.count
        pageControl.currentPage = 0
        pageControl.tintColor = .black
        pageControl.pageIndicatorTintColor = .white
        pageControl.currentPageIndicatorTintColor = .black
        self.view.addSubview(pageControl)
    }
    func newVC(viewController: String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: viewController)
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.lastIndex(of: viewController) else {
            return nil
        }
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else{
            return  nil
        }
        guard orderedViewControllers.count > previousIndex else{
            return nil
        }
        return orderedViewControllers[previousIndex]
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
          guard let viewControllerIndex = orderedViewControllers.lastIndex(of: viewController) else {
                  return nil
              }
              let nextIndex = viewControllerIndex + 1
              
        guard orderedViewControllers.count > nextIndex else{
                  return  nil
              }
              guard orderedViewControllers.count > nextIndex else{
                  return nil
              }
              return orderedViewControllers[nextIndex]
    }
    
   
    
}
