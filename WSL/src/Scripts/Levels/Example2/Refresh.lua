stack:SetInt( "count", stack:GetInt( "count" ):Get() + 1 )

if stack:GetInt( "count" ):Get() >= 100 then
	stack:SetInt( "count", 0 )
	singleton:Instantiate( "bin/Info/Objects/UFO/Object.txt" )
	level:AddObject( stack:GetInt( "add" ):Get(), 0 )
end

if stack:GetInt( "levelCount" ):Get() == 1000 then
	print( "Changing to level1." )
	level:SetDestroy( true )
	level:SetActive( false )
	stack:SetInt( "levelCount", 0 )
	singleton:InstantiateLevel( "bin/Info/Levels/Example/Level.txt" )
end
