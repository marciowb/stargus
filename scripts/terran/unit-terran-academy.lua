--
-- unit-terran-academy
--

DefineAnimations("animations-terran-academy", {
  Still = {
    "frame 0", "wait 125",
  },
  Research = {--[[FIXME: active overlay 264]]
    "frame 0", "wait 125",
  },
})

DefineConstruction("construction-terran-academy", {
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

DefineUnitType("unit-terran-academy", { Name = "Academy",
  Image = {"file", "terran/units/academy.png", "size",  {96, 128}},
  Shadow = {"file", "terran/units/academy shadow.png", "size",  {96, 128}},
  Animations = "animations-terran-academy", Icon = "icon-terran-academy",
  Costs = {"time", 200, "gold", 150},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1, "oil", 1},
  Construction = "construction-terran-academy",
  Speed = 0,
  HitPoints = 600,
  DrawLevel = 50,
  TileSize = {3, 2}, BoxSize = {95, 63},
  SightRange = 1,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 15, AnnoyComputerFactor = 20,
  Points = 170,
  Corpse = {"unit-destroyed-3x3-place", 0},
  ExplodeWhenKilled = "missile-terran-explosion-large",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  Sounds = {
    "selected", "terran-academy-selected",
--    "ready", "human-blacksmith-ready",
    "help", "terran-base-attacked",
    "dead", "explosion-large"} } )

-- DefineUpgrade("upgrade-terran-u238-shells")
-- DefineUpgrade("upgrade-terran-stim-pack")

DefineButton( { Pos = 1, Level = 0, Icon = "icon-terran-u238-shells",
  Action = "research", Value = "upgrade-terran-u238-shells",
  Allowed = "check-single-research",
  Key = "u", Hint = "Research ~!U-238 Shells",
  ForUnit = {"unit-terran-academy"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-terran-stim-pack",
  Action = "research", Value = "upgrade-terran-stim-pack",
  Allowed = "check-single-research",
  Key = "t", Hint = "Research S~!tim Pack Tech",
  ForUnit = {"unit-terran-academy"} } )
