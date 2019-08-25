import SwiftUI

struct ActivityIndicatorView: UIViewRepresentable {
    @Binding var isAnimating: Bool
    
    private var style: UIActivityIndicatorView.Style?

    init(isAnimating: Binding<Bool>, style: UIActivityIndicatorView.Style? = nil) {
        _isAnimating = isAnimating
        self.style = style
    }
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        guard let style = self.style else {
            return UIActivityIndicatorView()
        }
        
        return UIActivityIndicatorView(style: style)
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}
