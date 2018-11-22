cask 'drjava' do
  version '20160913-225446,beta'
  sha256 '701c3638049b99aa59cfcb2a9874493496d20ffb34370e67935bb6f64fa5ae91'

  # downloads.sourceforge.net/drjava/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/projects/drjava/files/1.%20DrJava%20Stable%20Releases/drjava-#{version.after_comma}-#{version.before_comma}/drjava-#{version.after_comma}-#{version.before_comma}.jar"
  appcast 'https://sourceforge.net/projects/drjava/rss?path=/1.%20DrJava%20Stable%20Releases'
  name 'DrJava'
  homepage 'http://www.drjava.org/'
  depends_on java: '8'

  container type: :naked
  app "drjava-#{version.after_comma}-#{version.before_comma}/#{version.after_comma}-#{version.before_comma}.jar", target: 'DrJava.jar'
end
