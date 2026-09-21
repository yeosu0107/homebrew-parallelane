cask "parallelane" do
  version "1.3.0"
  sha256 "db8431d43a538268fbc05cb7f0e1a26871937f09e04d25fffc94cd5e9fbb8f7e"

  url "https://releases.parallelane.com/#{version}/ParalleLane-#{version}.dmg"
  name "ParalleLane"
  desc "Worktree-first Git GUI client for working alongside AI coding agents"
  homepage "https://parallelane.com/"

  # 새 버전 탐지에만 latest.json을 쓴다. 다운로드 URL은 위처럼 버전 경로에 고정된다 —
  # R2의 버전 디렉터리는 immutable 캐시라 sha256이 바뀌지 않는다.
  livecheck do
    url "https://releases.parallelane.com/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  # 앱에 Tauri 인앱 업데이터가 있다. brew upgrade는 이 cask를 건너뛰고 인앱 업데이트에 맡긴다.
  # 앱 최소 버전(10.15)은 Homebrew 자체의 지원 하한보다 낮아 버전 제약은 두지 않는다.
  auto_updates true
  depends_on :macos

  app "ParalleLane.app"

  zap trash: [
    "~/Library/Application Support/io.parallelane.app",
    "~/Library/Caches/io.parallelane.app",
    "~/Library/Caches/parallelane",
    "~/Library/Preferences/io.parallelane.app.plist",
    "~/Library/Saved Application State/io.parallelane.app.savedState",
    "~/Library/WebKit/io.parallelane.app",
    "~/Library/WebKit/parallelane",
  ]
end
