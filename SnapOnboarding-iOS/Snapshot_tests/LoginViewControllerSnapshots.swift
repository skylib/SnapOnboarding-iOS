import SnapFBSnapshotBase
@testable import SnapOnboarding_iOS

class LoginViewControllerSnapshots: SnapFBSnapshotBase {
    
    var vc: SnapOnboardingViewController!
    
    override func setUp() {
        vc = getSnapOnboardingViewController()
        
        let delegate = mockSnapOnboardingDelegate()
        let configuration = SnapOnboardingConfiguration(delegate: delegate, viewModel: viewModel)
        vc.applyConfiguration(configuration)
        
        sutBackingViewController = vc
        sut = vc.view
//        vc.viewWillAppear(false)
        
        UIApplication.shared.keyWindow?.rootViewController = vc
        UIApplication.shared.keyWindow?.rootViewController = nil
        
        // Setup the loaded view
        currentPage = 2
        
        super.setUp()
        recordMode = recordAll || false
    }
    
    override func tearDown() {
        vc = nil
        
        super.tearDown()
    }
    
}

extension LoginViewController {
    
    override func viewWillLayoutSubviews() {
        setupForScreenSize(parent!.view.frame.size)
        updateProfileViewCornerRadius()
    }
    
}
