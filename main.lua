local background = display.newImage("background.jpg",160,230);

local currentName = "";
local firstName = "";
local lastName = "";
local startupDD = "";
local startupNG = "";
local play = "";
local race = "";
local gender = "";

local newNameButton;
local femaleButton;
local maleButton;
local elfButton;
local orcButton;
local humanButton;
local dwarfButton;
local dragonbornButton;
local teiflingButton;
local halflingButton;
local gnomeButton;

--Female First Names--
local elfNamesFF = {"Althaea","Anastrianna","Caelynn",
                    "Drusilia","Jelenneth","Meriele",
                    "Naivara","Vadania","Sariel"};
local orcNamesFF = {"Baggi","Myev","Neega",
                    "Ovak","Vola","Yevelda",
                    "Sutha","Ownka","Volen"};
local humanNamesFF = {"Jasmal","Shandri","Rowan",
                      "Kara","Betha","Mara",
                      "Arizima","Dona","Luisa"};
local dwarfNamesFF = {"Audhild","Bardryn","Dagnal",
                      "Diesa","Gunnloda","Hleja",
                      "Mardred","Torgga","Vistra"};
local dragonBornNamesFF = {"Akra","Daar","Farideh",
                           "Kava","Korinn","Mishaan",
                           "Nala","Thava","Sora"};
local teiflingNamesFF ={"Anakis","Criella","Makaria",
                        "Orianna","Damaia","Kallista",
                        "Phelaia","Rieta","Akta"};
local halflingNamesFF = {"Andry","Bree","Callie",
                         "Cora","Kithri","Lidda",
                         "Merla","Seraphina","Verna"};
local gnomeNamesFF = {"Breena","Carlin","Donella",
                      "Ellywick","Lorilla","Lilli",
                      "Tana","Zanna","Orla"};

--Male First Names--
local elfNamesMF = {"Aelar","Aramil","Carric",
                    "Erevan","Galinndan","Ivellios",
                    "Laucian","Quarion","Soveliss"};
local orcNamesMF = {"Dench","Feng","Krusk",
                    "Ront","Shump","Thokk",
                    "Henk","Gell","Holg"};
local humanNamesMF = {"Haseid","Darvin","Malark",
                      "Bran","Anton","Salazar",
                      "Igan","Ander","Ramas"};
local dwarfNamesMF = {"Adrik","Brotter","Baern",
                      "Delg","Fargrim","Flint",
                      "Ulfgar","Vondal","Tordek"};
local dragonBornNamesMF = {"Balasar","Donaar","Kriv",
                           "Medrash","Nadaar","Rhogar",
                           "Torinn","Arjhan","Ghesh"};
local teiflingNamesMF ={"Barakas","Damakos","Leucis",
                        "Mordai","Amnon","Iados",
                        "Melech","Morthos","Skamos"};
local halflingNamesMF = {"Ander","Cade","Corrin",
                         "Errich","Garret","Lindal",
                         "Lyle","Milo","Wellby"};
local gnomeNamesMF = {"Alvyn","Brocc","Burgell",
                      "Dimble","Gimble","Frug",
                      "Kellan","Namfoodle","Zook"};

--Last Names--
local elfNames = {"Amakiir","Amastacia","Ilphelkiir",
                  "Liadon","Galanodel","Holimion",
                  "Siannodel","Highgarden","Nailo"};
local orcNames = {"Blackrock","Warsong","Bonechewer",
                  "Shatteredhand","Stormreaver","Burningblade",
                  "Thunderlord","Dragonskull","Shadowolf"};
local humanNames = {"Khalid","Greycastle","Kulenov",
                    "Brightwood","Falone","Pisacar",
                    "Evenwood","Hornraven","Fezim"};
local dwarfNames = {"Balderk","Battlehammer","Brawnanvil",
                    "Dankil","Fireforge","Frostbeard",
                    "Ironfist","Ungart","Strakheln"};
local dragonBornNames = {"Delmirev","Kimbatuul","Myastan",
                         "Drachandion","Nemmonis","Norixius",
                         "Yarjerit","Kasendalor","Stendalioth"};
local teiflingNames ={"Creep","Bringer of Despair","Embodiment of Fear",
                      "Keeper of Sorrow","God of Torment","",
                      "Weary","Spiller of Blood","Bringer of Terror"};
local halflingNames = {"Brushgather","Goodbarrel","Greenbottle",
                       "Highhill","Hilltopple","Tealeaf",
                       "Thorngage","Underbough","Tosscobble"};
local gnomeNames = {"Beren","Folkor","Garrick",
                    "Timbers","Daergel","Nackle",
                    "Murnig","Scheppen","Raulnor"};



function setUp()
  GUI();
end

function GUI()
  background.width = 350;
  background.height = 550;

      startupDD = "D&D";
      displayStartup = display.newText(startupDD,160,40,"Old English Text MT",50);
      displayStartup.width = 300;
      displayStartup.align = "center";
      displayStartup:setFillColor(1,.5,0)

      startupNG = "Name Generator";
      displayStartup = display.newText(startupNG,160,90,"Old English Text MT",40);
      displayStartup.width = 285;
      displayStartup.align = "center";
      displayStartup:setFillColor(1,.5,0)

  PickARace();

end

function PickARace()
  local pickRace = "Pick a race!";
  displayRace = display.newText(pickRace,160,140,"Old English Text MT",30);
  displayRace.width = 300;
  displayRace.align = "center";
  displayRace:setFillColor(0,0,0)

  local widget = require("widget");

  local function handleElf(event)
    if("ended" == event.phase) then
      racePicked("elf");
    end
  end

  local function handleOrc(event)
    if("ended" == event.phase) then
      racePicked("orc");
    end
  end

  local function handleHuman(event)
    if("ended" == event.phase) then
      racePicked("human");
    end
  end

  local function handleDwarf(event)
    if("ended" == event.phase) then
      racePicked("dwarf");
    end
  end

  local function handleDragonborn(event)
    if("ended" == event.phase) then
      racePicked("dragonborn");
    end
  end

  local function handleTeifling(event)
    if("ended" == event.phase) then
      racePicked("teifling");
    end
  end

  local function handleHalfling(event)
    if("ended" == event.phase) then
      racePicked("halfling");
    end
  end

  local function handleGnome(event)
    if("ended" == event.phase) then
      racePicked("gnome");
    end
  end

  elfButton = widget.newButton(
      {left=10,
      top=20,
      defaultFile="button05.png",
      overFile="button06.png",
      onEvent=handleElf}
      );

      elfButton.width = 105;
      elfButton.height = 40;
      elfButton.x = 85;
      elfButton.y = 200;

      local elf = "Elf";
      displayElf = display.newText(elf,85,202,"Enchanted Land",20);
      displayElf.width = 20;
      displayElf.align = "center";
      displayElf:setFillColor(0,0,0);

  orcButton = widget.newButton(
      {left=10,
      top=20,
      defaultFile="button05.png",
      overFile="button06.png",
      onEvent=handleOrc}
      );

      orcButton.width = 105;
      orcButton.height = 40;
      orcButton.x = 85;
      orcButton.y = 260;

      local orc = "Orc";
      displayOrc = display.newText(orc,85,262,"Enchanted Land",20);
      displayOrc.width = 25;
      displayOrc.align = "center";
      displayOrc:setFillColor(0,0,0);

  humanButton = widget.newButton(
        {left=10,
        top=20,
        defaultFile="button05.png",
        overFile="button06.png",
        onEvent=handleHuman}
        );

        humanButton.width = 105;
        humanButton.height = 40;
        humanButton.x = 85;
        humanButton.y = 320;

        local human = "Human";
        displayHuman = display.newText(human,85,322,"Enchanted Land",20);
        displayHuman.width = 40;
        displayHuman.align = "center";
        displayHuman:setFillColor(0,0,0);

  dwarfButton = widget.newButton(
        {left=10,
        top=20,
        defaultFile="button05.png",
        overFile="button06.png",
        onEvent=handleDwarf}
        );

        dwarfButton.width = 105;
        dwarfButton.height = 40;
        dwarfButton.x = 85;
        dwarfButton.y = 380;

        local dwarf = "Dwarf";
        displayDwarf = display.newText(dwarf,85,382,"Enchanted Land",20);
        displayDwarf.width = 40;
        displayDwarf.align = "center";
        displayDwarf:setFillColor(0,0,0);

  dragonbornButton = widget.newButton(
        {left=10,
        top=20,
        defaultFile="button05.png",
        overFile="button06.png",
        onEvent=handleDragonborn}
        );

        dragonbornButton.width = 105;
        dragonbornButton.height = 40;
        dragonbornButton.x = 235;
        dragonbornButton.y = 200;

        local dragonborn = "Dragonborn";
        displayDragon = display.newText(dragonborn,235,202,"Enchanted Land",20);
        displayDragon.width = 65;
        displayDragon.align = "center";
        displayDragon:setFillColor(0,0,0);

  teiflingButton = widget.newButton(
        {left=10,
        top=20,
        defaultFile="button05.png",
        overFile="button06.png",
        onEvent=handleTeifling}
        );

        teiflingButton.width = 105;
        teiflingButton.height = 40;
        teiflingButton.x = 235;
        teiflingButton.y = 260;

        local teifling = "Teifling";
        displayTeifling = display.newText(teifling,235,262,"Enchanted Land",20);
        displayTeifling.width = 45;
        displayTeifling.align = "center";
        displayTeifling:setFillColor(0,0,0);

  halflingButton = widget.newButton(
        {left=10,
        top=20,
        defaultFile="button05.png",
        overFile="button06.png",
        onEvent=handleHalfling}
        );

        halflingButton.width = 105;
        halflingButton.height = 40;
        halflingButton.x = 235;
        halflingButton.y = 320;

        local halfling = "Halfling";
        displayHalfling = display.newText(halfling,235,322,"Enchanted Land",20);
        displayHalfling.width = 45;
        displayHalfling.align = "center";
        displayHalfling:setFillColor(0,0,0);

  gnomeButton = widget.newButton(
        {left=10,
        top=20,
        defaultFile="button05.png",
        overFile="button06.png",
        onEvent=handleGnome}
        );

        gnomeButton.width = 105;
        gnomeButton.height = 40;
        gnomeButton.x = 235;
        gnomeButton.y = 380;

        local gnome = "Gnome";
        displayGnome = display.newText(gnome,235,382,"Enchanted Land",20);
        displayGnome.width = 40;
        displayGnome.align = "center";
        displayGnome:setFillColor(0,0,0);
end

function racePicked(r)
  --race buttons remove self--
  elfButton:removeSelf();
  orcButton:removeSelf();
  humanButton:removeSelf();
  dwarfButton:removeSelf();
  dragonbornButton:removeSelf();
  teiflingButton:removeSelf();
  halflingButton:removeSelf();
  gnomeButton:removeSelf();

  --text remove self--
  displayElf:removeSelf();
  displayOrc:removeSelf();
  displayHuman:removeSelf();
  displayDwarf:removeSelf();
  displayDragon:removeSelf();
  displayTeifling:removeSelf();
  displayHalfling:removeSelf();
  displayGnome:removeSelf();
  displayRace:removeSelf();


  race = r;
  PickGender();
end

function PickGender()
  local widget = require("widget");

  local function handleFemale(event)
    if("ended" == event.phase) then
      GenderPicked("female");
    end
  end

  local function handleMale(event)
    if("ended" == event.phase) then
      GenderPicked("Male");
    end
  end

  femaleButton = widget.newButton(
        {left=10,
        top=20,
        defaultFile="button05.png",
        overFile="button06.png",
        onEvent=handleFemale}
        );

        femaleButton.width = 105;
        femaleButton.height = 40;
        femaleButton.x = 85;
        femaleButton.y = 200;

        local female = "Female";
        displayFemale = display.newText(female,85,200,"Enchanted Land",20);
        displayFemale.width = 40;
        displayFemale.align = "center";
        displayFemale:setFillColor(0,0,0);

  maleButton = widget.newButton(
        {left=10,
        top=20,
        defaultFile="button05.png",
        overFile="button06.png",
        onEvent=handleMale}
        );

        maleButton.width = 105;
        maleButton.height = 40;
        maleButton.x = 235;
        maleButton.y = 200;

        local male = "Male";
        displayMale = display.newText(male,235,200,"Enchanted Land",20);
        displayMale.width = 40;
        displayMale.align = "center";
        displayMale:setFillColor(0,0,0);

end

function GenderPicked(g)
  -- remove gender buttons/text--
  femaleButton:removeSelf();
  maleButton:removeSelf();
  displayFemale:removeSelf();
  displayMale:removeSelf();

  gender = g;
  generateNewName();
end

function generateNewName()
  if not (currentName == "") then
    displayCurrentName:removeSelf();
  end

  local widget = require("widget");

  local function handleNewName(event)
    if("ended" == event.phase) then
      generateNewName();
    end
  end

  newNameButton = widget.newButton(
      {left=10,
      top=20,
      defaultFile="button05.png",
      overFile="button06.png",
      onEvent=handleNewName}
      );

      newNameButton.width = 87;
      newNameButton.height = 30;
      newNameButton.x = 160;
      newNameButton.y = 250;

      if (race == "elf" and gender == "female") then
        firstName = elfNamesFF[math.random(8)];
        lastName = elfNames[math.random(8)];
      end

      currentName = firstName.."\n" .. lastName;
      displayCurrentName = display.newText(currentName,160,170,"Old English Text MT",30);
      displayCurrentName.width = 300;
      displayCurrentName.align = "center";
      displayCurrentName:setFillColor(0,0,0);

      play = "New Name";
      displayPlay = display.newText(play,160,252,"Enchanted Land",20);
      displayPlay.width = 60;
      displayPlay.align = "center";
      displayPlay:setFillColor(0,0,0);
end

setUp();
