import SwiftUI

public struct ActivityIndicatorView: UIViewRepresentable {
    @Binding var isAnimating: Bool
    var color: UIColor
    var style: UIActivityIndicatorView.Style

    public init(isAnimating: Binding<Bool> = .constant(true), style: UIActivityIndicatorView.Style = .medium, color: UIColor = .systemGray) {
        _isAnimating = isAnimating
        self.style = style
        self.color = color
    }

    public func makeUIView(context: Context) -> UIActivityIndicatorView {
        UIActivityIndicatorView(style: style)
    }

    public func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        uiView.color = self.color
        self.isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}
