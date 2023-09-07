function sudocode --wraps='SUDO_EDITOR="(which code) --wait" sudoedit' --wraps=SUDO_EDITOR=\"\'\$\(which\ code\)\'\ --wait\"\ sudoedit --description alias\ sudocode\ SUDO_EDITOR=\"\'\$\(which\ code\)\'\ --wait\"\ sudoedit
  SUDO_EDITOR="'$(which code)' --wait" sudoedit $argv
end
