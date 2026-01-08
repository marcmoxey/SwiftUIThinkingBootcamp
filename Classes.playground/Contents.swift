import UIKit


// Classes are slow compre to Structs
// Classes are stored in the Heap (memory)
// Objects in the Heap are Reference Types
// refernece types point to an object in memory and updated the object in memory

// All of the data needed for some screen
class ScreenViewModel {
    let title: String
   private(set) var showButton: Bool
    
    // Same init as a Struct, except structs have implicit inits
    init(title: String, showButton: Bool) {
        self.title = title
        self.showButton = showButton
    }
    
    deinit {
        // runs as the objects is being remove from memory
        // Sturcts do NOT have deinit
    }
    
    
    func hideButton() {
        showButton = false
    }
    
    func updateShowButton(newValue: Bool) {
        showButton = newValue
    }
}


// Notice that we are using "let", becuase:
// the object itself is not changing
// the data inside the object is changing
let viewModel: ScreenViewModel = ScreenViewModel(title: "Screen 1", showButton: true)
let value = viewModel.showButton

viewModel.hideButton()
viewModel.updateShowButton(newValue: false)

