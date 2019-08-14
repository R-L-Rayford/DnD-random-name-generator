local background = display.newImage("background.jpg",160,230);

local currentName = " ";
local newNameButton;
local startupDD = "";
local startupNG = "";
local play = "";

function setUp()
  GUI();
end

function GUI()
  background.width = 350;
  background.height = 550;

  local widget = require("widget");

  local function handleStart(event)
    if("ended" == event.phase) then
      newName();
    end
  end

  newNameButton = widget.newButton(
      {left=10,
      top=20,
      defaultFile="button05.png",
      overFile="button06.png",
      onEvent=handleStart}
      );

      newNameButton.width = 87;
      newNameButton.height = 30;
      newNameButton.x = 160;
      newNameButton.y = 250;


      startupDD = "D&D";
      displayStartup = display.newText(startupDD,160,50,"Old English Text MT",50);
      displayStartup.width = 300;
      displayStartup.align = "center";
      displayStartup:setFillColor(1,.5,0)
      displayStartup:setStrokeColor(0)

      startupNG = "Name Generator";
      displayStartup = display.newText(startupNG,160,100,"Old English Text MT",40);
      displayStartup.width = 285;
      displayStartup.align = "center";
      displayStartup:setFillColor(1,.5,0)

      currentName = "Lillith Highgarden";
      displayCurrentName = display.newText(currentName,160,200,"Old English Text MT",30);
      displayCurrentName.width = 300;
      displayCurrentName.align = "center";
      displayCurrentName:setFillColor(0,0,0);

      play = "New Name";
      displayPlay = display.newText(play,160,252,"Pristina",20);
      displayPlay.width = 75;
      displayPlay.align = "center";
      displayPlay:setFillColor(0,0,0);

end

function newName()
end

setUp();
