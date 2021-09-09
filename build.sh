app: google-chrome-stable
binpatch: true

ingredients:
  dist: DIST
  sources:
    - deb http://archive.ubuntu.com/ubuntu/ DIST main universe
  debs:
    - ../google-chrome-stable_current_amd64.deb
script:
  - cp usr/share/applications/google-chrome.desktop .
  - cp opt/google/chrome/product_logo_256.png .
  - mv product_logo_256.png google-chrome.png
  - cd usr/bin && rm google-chrome-stable && ln -s ../../opt/google/chrome/google-chrome google-chrome-stable
