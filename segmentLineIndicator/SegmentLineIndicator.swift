import UIKit

class SegmentLineIndicator: UISegmentedControl {
    
    func initUI(){
           setupBackground()
           setupFonts()
       }

    func setupBackground(){
           let backgroundImage = UIImage(named: "bg_separator_segment")
           let dividerImage = UIImage(named: "bg_unselect_segment")
           let backgroundImageSelected = UIImage(named: "bg_select_segment")
           
           self.setBackgroundImage(backgroundImage, for: UIControl.State(), barMetrics: .default)
           self.setBackgroundImage(backgroundImageSelected, for: .highlighted, barMetrics: .default)
           self.setBackgroundImage(backgroundImageSelected, for: .selected, barMetrics: .default)
           
           self.setDividerImage(dividerImage, forLeftSegmentState: UIControl.State(), rightSegmentState: .selected, barMetrics: .default)
           self.setDividerImage(dividerImage, forLeftSegmentState: .selected, rightSegmentState: UIControl.State(), barMetrics: .default)
           self.setDividerImage(dividerImage, forLeftSegmentState: UIControl.State(), rightSegmentState: UIControl.State(), barMetrics: .default)
       }
       
       func setupFonts(){
           let font = UIFont.systemFont(ofSize: 16.0)
           
           let normalTextAttributes = [
               NSAttributedString.Key.foregroundColor: UIColor.black,
               NSAttributedString.Key.font: font
           ]
           
           self.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.label as Any], for: UIControl.State())
           self.setTitleTextAttributes(normalTextAttributes, for: .highlighted)
           self.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.label as Any], for: .selected)
       }

}
