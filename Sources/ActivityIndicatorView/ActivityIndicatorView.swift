import SwiftUI

public struct ActivityIndicatorView: UIViewRepresentable {
    @Binding var isAnimating: Bool
    var color: UIColor
    
    private var style: UIActivityIndicatorView.Style?

    public init(isAnimating: Binding<Bool>, style: UIActivityIndicatorView.Style? = nil, color: UIColor = .systemGray) {
        _isAnimating = isAnimating
        self.style = style
        self.color = color
    }
    
    public func makeUIView(context: Context) -> UIActivityIndicatorView {
        guard let style = self.style else {
            return UIActivityIndicatorView()
        }
        
        return UIActivityIndicatorView(style: style)
    }
    
    public func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        uiView.color = color
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}
