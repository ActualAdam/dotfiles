function bat --description 'alias bat=bat --theme=$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo default || echo GitHub)'
 command bat --theme=$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo default || echo GitHub) $argv
        
end
