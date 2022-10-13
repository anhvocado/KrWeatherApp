

import Foundation

protocol LocationListViewDelegate: AnyObject {
    func userDidSelectLocation(at index: Int)
    func userAdd(newLocation: Location)
    func userDeleteLocation(at index: Int)
}
