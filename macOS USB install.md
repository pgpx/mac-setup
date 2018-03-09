# macOS USB install

## Create USB installation drive

* <https://support.apple.com/en-gb/HT201372>
* <http://appleinsider.com/articles/18/01/26/how-to-make-a-bootable-macos-high-sierra-install-disk-on-usb-or-thunderbolt-drive>

1. Download macOS from the Mac App Store; then quit the installer (from its menu).
2. Mount your USB drive.
3.  ```bash
    sudo /Applications/Install\ macOS\ High\ Sierra.app/Contents/Resources/createinstallmedia—volume /Volumes/macinstall
    ```

## Reinstall macOS from USB

* <https://www.macworld.co.uk/how-to/mac-software/how-clean-install-macos-3637409/>

1. Restart the Mac, holding down the Option key (or Cmd+R).  Startup Manager will load.
2. Setup Wifi.
3. Choose Disk Utility and erase the Macintosh HD drive, use `APFS` (not `APFS (Encrypted)` - can turn on FileVault later).
4. Reinstall macOS
    * Use APFS for the filesystem (<https://support.apple.com/en-gb/HT208033>)