import SwiftUI

public struct ActivityIndicatorView: UIViewRepresentable {
    @Binding var isAnimating: Bool
    
    private var style: UIActivityIndicatorView.Style?

    public init(isAnimating: Binding<Bool>, style: UIActivityIndicatorView.Style? = nil) {
        _isAnimating = isAnimating
        self.style = style
    }
    
    public func makeUIView(context: Context) -> UIActivityIndicatorView {
        guard let style = self.style else {
            return UIActivityIndicatorView()
        }
        
        return UIActivityIndicatorView(style: style)
    }
    
    public func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}
