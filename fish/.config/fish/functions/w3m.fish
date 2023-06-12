function w3m --wraps='W3M_IMG2SIXEL=/opt/homebrew/bin/img2sixel w3m -sixel -o display_image=1' --wraps='W3M_IMG2SIXEL=/opt/homebrew/bin/img2sixel /opt/homebrew/bin/w3m -sixel -o display_image=1' --description 'alias w3m W3M_IMG2SIXEL=/opt/homebrew/bin/img2sixel /opt/homebrew/bin/w3m -sixel -o display_image=1'
  W3M_IMG2SIXEL=/opt/homebrew/bin/img2sixel /opt/homebrew/bin/w3m -sixel -o display_image=1 $argv
        
end
