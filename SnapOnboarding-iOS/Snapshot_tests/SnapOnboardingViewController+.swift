import UIKit
@testable import SnapOnboarding_iOS

var currentPage = 0
var viewModel = mockSnapOnboardingViewModelNorwegian()
//var viewModel = mockSnapOnboardingViewModelEnglish()

extension SnapOnboardingViewController {
    
    override open func viewWillLayoutSubviews() {
        configureTermsAndConditionsLabel()
        setupForScreenSize(view.frame.size)
    }
    
    override open func viewDidLayoutSubviews() {
        // Will reset on layoutSubviews, and must therefore be set afterwards
        scrollView?.contentOffset.x = view.frame.width * CGFloat(currentPage)
    }
    
    // Prevent adjustment to screen size before a simulated frame is set (i.e. from viewDidLoad)
    override class var screenSize: CGSize {
        return CGSize()
    }
    
}
