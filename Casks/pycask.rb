cask 'pycask' do
  version '2.7.17'
  sha256 '93791aedab6f9e708fb97d2e4ac3a2f15e7acbbb1881d1021f2dd785c622c484'

  url "https://www.python.org/ftp/python/#{version}/python-#{version}-macosx10.9.pkg"
  name 'Python 2'
  homepage 'https://python.org/'

  depends_on macos: '>= :mavericks'

  pkg "python-#{version}-macosx10.9.pkg"

  uninstall delete: [
                      "/Applications/Python #{version.slice(%r{\d+\.\d+})}",
                      "/Library/Frameworks/Python.Framework/Versions/#{version.slice(%r{\d+\.\d+})}",
                      "/Library/Python/#{version.slice(%r{\d+\.\d+})}",
                    ]

  zap delete: "~/Library/Python/#{version.slice(%r{\d+\.\d+})}"

end
