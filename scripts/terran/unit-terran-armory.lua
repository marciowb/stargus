--
-- unit-terran-armory
--

DefineAnimations("animations-terran-armory", {
  Still = {
    "frame 0", "wait 125",
  },
  Research = {--[[FIXME: active overlay 269]]
    "frame 0", "wait 125",
  },
})

DefineConstruction("construction-terran-armory", {
  Files = {
    File = "terran/units/building construction medium.png",
    Size = {96, 96}},
  ShadowFiles = {
    File = "terran/units/building construction medium shadow.png",
    Size = {96, 96}},
  Constructions = {
   {Percent = 0,
    File = "construction",
    Frame = 0},
   {Percent = 20,
    File = "construction",
    Frame = 1},
   {Percent = 40,
    File = "construction",
    Frame = 2},
   {Percent = 60,
    File = "main",
    Frame = 1}}
})

DefineUnitType("unit-terran-armory", { Name = "Armory",
  Image = {"file", "terran/units/armory.png", "size", {160, 128}},
  Shadow = {"file", "terran/units/armory shadow.png", "size", {160, 128}},
  Animations = "animations-terran-armory", Icon = "icon-terran-armory",
  Costs = {"time", 200, "gold", 100, "wood", 50},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-terran-armory",
  Speed = 0,
  HitPoints = 750,
  DrawLevel = 50,
  TileSize = {3, 2}, BoxSize = {95, 63},
  SightRange = 1,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 30, AnnoyComputerFactor = 35,
  Points = 160,
  Corpse = {"unit-destroyed-3x3-place", 0},
  ExplodeWhenKilled = "missile-terran-explosion-large",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  Sounds = {
    "selected", "terran-armory-selected",
--    "ready", "human-barracks-ready",
    "help", "terran-base-attacked",
    "dead", "explosion-large"} } )
