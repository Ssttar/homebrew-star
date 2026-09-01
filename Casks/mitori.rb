cask "mitori" do
  version "0.2.2"
  sha256 "17f41ca4a552b5adf7efc55fbd73be5f88199db5d7c39973efd09612249bac43"

  url "https://github.com/Zach677/mitori/releases/download/v#{version}/Mitori-#{version}.dmg"
  name "Mitori"
  desc "Monitor Apple ID store credit balances from the menu bar"
  homepage "https://github.com/Zach677/mitori"

  depends_on macos: :sonoma

  app "Mitori.app"

  preflight do
    system_command "xattr",
                   args: ["-cr", "#{staged_path}/Mitori.app"]
  end

  zap trash: "~/Library/Application Support/Mitori"
end
