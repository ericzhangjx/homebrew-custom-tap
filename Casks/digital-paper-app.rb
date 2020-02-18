cask 'digital-paper-app' do
  version '1.4.3.17290'
  sha256 '3c2277ccd16057746433768b75fea39ca170ddf01b8cf89af04140700fddee64'

  url "https://www.sony.net/Products/DigitalPaperSystem/Software/DPA-Mac/DigitalPaperApp_#{version}.dmg"
  #appcast ''
  name 'Digital Paper App'
  homepage 'https://www.sony.jp/digital-paper/apl/dpa.html'

  auto_updates true

  pkg "DigitalPaperApp_#{version}.pkg"

  uninstall pkgutil: 'DigitalPaperApp'

  zap trash: [
               '~/Library/Application Support/Sony Corporation/Digital Paper App',
               '~/Library/Preferences/com.sony.digitalpaperapp.helper.plist',
               '~/Library/Preferences/com.sony.digitalpaperapp.plist',
             ],
      rmdir: [
               '~/Library/Application Support/Sony Corporation', # Remove when it's empty
             ]
end
