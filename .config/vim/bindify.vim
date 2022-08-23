let bindnumber = 1
let bindname = @%

function CreateBinds()
	
	for i in range(1,line('$'))
		execute "normal! Ialias " . g:bindname . g:bindnumber " " 
		let g:bindnumber += 1
		execute "normal! i\"alias " . g:bindname . "" g:bindname . g:bindnumber . "; say\<Esc>$a\"\<Esc>j"
	endfor

	execute "normal! G4Wdt;i" . g:bindname . "1"	
	execute "%s/.txt//g"
	execute "wq"

	echo "SUCCESSFUL"

endfunction
