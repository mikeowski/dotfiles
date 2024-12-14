function ghdel 
  co
  for i in (git branch | grep burak); 
	  git br -D (string trim $i)
  end
end
