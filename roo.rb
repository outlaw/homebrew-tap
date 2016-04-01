ROO_VERSION = '0.0.0-alpha'
ROO_DIGEST = ''

class Roo < Formula
  homepage ""
  url "https://github.com/outlaw/roo/releases/download/#{ROO_VERSION}/roo-darwin-x86_64.tar.gz"

  version ROO_VERSION
  sha256  ROO_DIGEST

  def install
    bin.install 'roo'
  end

  test do
    system 'roo', '-h'
  end
end
