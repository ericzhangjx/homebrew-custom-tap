cask 'thunder301' do
  version '3.0.1.2548-Beta'
  sha256 'c1bdd92509e2b6cd403d82b51078b79f6910766ef21087527722c4c709916a28'

  # down.sandai.net was verified as official when first introduced to the cask
  url "https://down.sandai.net/mac/thunder_dl#{version.hyphens_to_underscores}.dmg"
  #appcast 'https://static-xl9-ssl.xunlei.com/json/mac_download_url.json'
  name 'Thunder'
  name '迅雷'
  homepage 'https://mac.xunlei.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Thunder.app'

  zap trash: [
               '~/Library/Application Support/Thunder',
               '~/Library/Caches/com.xunlei.Thunder',
               '~/Library/Caches/com.xunlei.XLPlayer',
               '~/Library/Cookies/com.xunlei.Thunder.binarycookies',
               '~/Library/Preferences/com.xunlei.Thunder.loginSDK.plist',
               '~/Library/Preferences/com.xunlei.Thunder.plist',
               '~/Library/Preferences/com.xunlei.XLPlayer.plist',
               '~/Library/Saved Application State/com.xunlei.Thunder.savedState',
               '~/Library/Saved Application State/com.xunlei.XLPlayer.savedState',
               '~/Library/WebKit/com.xunlei.Thunder',
             ]
end
