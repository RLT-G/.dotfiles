function h
    command echo "
┼───────────────────────────────────────────
│ cat:    bat \$argv                        
│ ls:     lsd \$argv                        
│ d:      docker \$argv                     
│ dc:     docker compose \$argv             
│ l:      lazygit                           
│ n:      nvim \$argv                       
│ ter:    trans -brief "en:ru" \$argv       
│ tre:    trans -brief "ru:en" \$argv       
│ xcopy:  xclip -selection clipboard        
┼───────────────────────────────────────────
│ sysstart:   sudo systemctl start \$argv   
│ sysstop:    sudo systemctl stop \$argv    
│ sysenable:  sudo systemctl enable \$argv  
│ sysdisable: sudo systemctl disable \$argv 
┼───────────────────────────────────────────
│ gcn:  git clone \$argv                    
│ gbn:  git branch \$argv                   
│ gsw:  git switch \$argv                   
│ gpl:  git pull \$argv                     
┼───────────────────────────────────────────
│ gd:   git diff \$argv                     
│ gl:   git log \$argv                      
┼───────────────────────────────────────────
│ gs:   git status                          
│ ga:   git add \$argv                      
│ gc:   git commit -m \$argv                
│ gp:   git push \$argv                     
┼───────────────────────────────────────────
    " | cat --file-name "git functions"
end

│ ── ┼
