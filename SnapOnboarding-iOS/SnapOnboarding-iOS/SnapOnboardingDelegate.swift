public protocol SnapOnboardingDelegate: class {
    
    func onboardingWillAppear()
    
    func termsAndConditionsTapped()
    func privacyPolicyTapped()
    
    func enableLocationServicesTapped()
    func locationServicesInstructionsTapped()
    
    func facebookSignupTapped()
    func instagramSignupTapped()
    func continueAsLoggedInUserTapped()
    func skipLoginTapped()
    func logoutFromCurrentAccountTapped()

}
