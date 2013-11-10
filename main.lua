--[[ 


This function helps in level generation on parallax scroll games by automatically generating screens from a lua table
The lua table is formed using any level generator tool like gumbo etc. 
levels = {}
levels = { 	{ {t, x, y } , {t, x, y}, {t, x, y}, } 
			{ {t, x, y } , {t, x, y}, {t, x, y}, } 
			{ {t, x, y } , {t, x, y}, {t, x, y}, } 
			{ {t, x, y } , {t, x, y}, {t, x, y}, } 
			{ {t, x, y } , {t, x, y}, {t, x, y}, } 
			{ {t, x, y } , {t, x, y}, {t, x, y}, } 
					
} 

Example of usage : 

levels[levelIndex][objectIndex]




How to declare on object

object1 			= display.newImage("example.png")
object1.objectIndex 		= 2				(the index of properties in table levels{}  )	
object1.levelIndex		= 1   			(by default it will be 1 for all objects)   
object1.x			= levels[levelIndex][objectIndex].x 
object1.y			= levels[levelIndex][objectIndex].y 



]]--





local function levelGenerator(self,event)
	  
	if paused == false and gameOver == false then
		if self.x <  -30  then
		
		self.levelIndex = self.levelIndex + 1
		self.x = levels[levelIndex][objectIndex].x + 480
		self.y = levels[levelIndex][objectIndex].y 
        		
	else 
		self.x = self.x - speed
		
        
	end 
	end
end

object1.enterFrame = levelGenerator
Runtime:addEventListener("enterFrame", object1)
