Pod::Spec.new do |spec|
    spec.name = "IncipiaKit"
    spec.version = "1.0.0"
    spec.summary = "A collection of utility methods ready for use on any iOS application."
    spec.homepage = "https://github.com/Incipia/IncipiaKit/"
    spec.license = { type: 'Apache', file: 'LICENSE' }
    spec.authors = { "Gregory Klein" => 'gregory@incipia.co' }
    spec.social_media_url = "https://incipia.co"

    spec.platform = :ios, "9.1"
    spec.requires_arc = true
    spec.frameworks = 'Foundation', 'UIKit'
    spec.source = { git: "https://github.com/Incipia/IncipiaKit.git", tag: "v#{spec.version}" }
    spec.source_files = "IncipiaKit/**/*.{h,swift}"
end
