--
-- unit-terran-dropship
--

DefineAnimations("animations-terran-dropship", {
  Still = {"frame 0", "wait 125",--[[FIXME: shift down 79A2]]},
  Move = {"unbreakable begin", "frame 0", "move 3", "wait 2", "frame 0", "move 3", "wait 1",
    "frame 0", "move 3", "wait 2", "frame 0", "move 2", "wait 1",
    "frame 0", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
    "frame 0", "move 3", "wait 2", "frame 0", "move 3", "wait 1",
    "frame 0", "move 3", "wait 2", "frame 0", "move 2", "wait 1",
    "frame 0", "move 3", "wait 1", "frame 0", "move 2", "unbreakable end", "wait 1",},
  Attack = {"unbreakable begin", "attack", "sound terran-dropship-attack",
    "unbreakable end", "wait 1",},
  Death = {"unbreakable begin", "sound terran-dropship-death",
    --[[active overlay 332,0]] "wait 3", "unbreakable end", "wait 1",},
})

DefineUnitType("unit-terran-dropship", { Name = "Wraith",
  Image = {"file", "terran/units/dropship.png", "size", {60, 60}},
  Shadow = {"file", "terran/units/dropship.png", "size", {60, 60}, "offset", {0, 42}},
  DrawLevel = 45, NumDirections = 32,
  Animations = "animations-terran-dropship", Icon = "icon-terran-dropship",
  Costs = {"time", 250, "gold", 400, "wood", 300},
  Speed = 14,
  HitPoints = 500,
  DrawLevel = 60,
  MaxOnBoard = 8,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 6, ComputerReactionRange = 8, PersonReactionRange = 6,
  Armor = 5, BasicDamage = 0, PiercingDamage = 16, Missile = "missile-griffon-hammer",
  MaxAttackRange = 4,
  Priority = 65,
  Points = 150,
  Demand = 2,
  ExplodeWhenKilled = "missile-terran-explosion-small",
  Type = "fly", ShadowFly = {Value = 1, Enable = true},
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  AirUnit = true,
  CanTransport = {},
  DetectCloak = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "terran-dropship-selected",
    "acknowledge", "terran-dropship-acknowledge",
    "ready", "terran-dropship-ready",
    "help", "basic human voices help 1",
    "dead", "terran-dropship-death"} } )
