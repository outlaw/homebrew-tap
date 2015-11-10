OUTLAW_VERSION = '0.0.1'
OUTLAW_DIGEST = ''

class Outlaw < Formula
  homepage ""
  url "https://github.com/outlaw/outlaw/releases/download/#{OUTLAW_VERSION}/outlaw.tar.gz"

  version OUTLAW_VERSION
  sha256  OUTLAW_DIGEST

  depends_on 'docker'         => :recommended
  depends_on 'docker-compose' => :recommended
  depends_on 'docker-machine' => :recommended

  def install
    bin.install 'bin/outlaw'
    prefix.install 'outlaw.yml'
    prefix.install 'bootsync.sh'
  end

  def post_install
    system 'outlaw', 'install'
  end

  test do
    system 'outlaw', '-h'
  end
end
