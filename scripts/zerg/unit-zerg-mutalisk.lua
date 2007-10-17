--
-- unit-zerg-mutalisk
--

DefineAnimations("animations-zerg-mutalisk", {
  Still = {"frame 0", "wait 125",--[[FIXME: shift down 79A2]]},
  Move = {"unbreakable begin", "frame 0", "move 3", "wait 2", "frame 0", "move 3", "wait 1",
    "frame 0", "move 3", "wait 2", "frame 0", "move 2", "wait 1",
    "frame 0", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
    "frame 0", "move 3", "wait 2", "frame 0", "move 3", "wait 1",--FIXME:not original sc animations
    "frame 0", "move 3", "wait 2", "frame 0", "move 2", "wait 1",
    "frame 0", "move 3", "wait 1", "frame 0", "move 2", "unbreakable end", "wait 1",},
  Attack = {"unbreakable begin", "attack", "sound zerg-mutalisk-attack",
    "unbreakable end", "wait 1",},
  Death = {"unbreakable begin", "sound zerg-mutalisk-death",
    --[[active overlay 332,0]] "wait 3", "unbreakable end", "wait 1",},
})

DefineUnitType("unit-zerg-mutalisk", { Name = "Mutalisk",
  Image = {"file", "zerg/units/mutalisk.png", "size", {64, 64}},
  Shadow = {"file", "zerg/units/mutalisk.png", "size", {64, 64}, "offset", {0, 42}},
  DrawLevel = 45, NumDirections = 32,
  Animations = "animations-zerg-mutalisk", Icon = "icon-zerg-mutalisk",
  Costs = {"time", 250, "minerals", 150, "gas", 100},
  Speed = 14,
  HitPoints = 120,
  DrawLevel = 60,
  TileSize = {1, 1}, BoxSize = {63, 63},--FIXME:wrong boxsize
  SightRange = 6, ComputerReactionRange = 8, PersonReactionRange = 6,
  Armor = 5, BasicDamage = 0, PiercingDamage = 16, Missile = "missile-griffon-hammer",
  MaxAttackRange = 4,
  Priority = 65,
  Points = 150,
  Demand = 2,
  ExplodeWhenKilled = "missile-terran-explosion-small",--FIXME:wrong explosion
  Type = "fly", ShadowFly = {Value = 1, Enable = true},
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  AirUnit = true,
  DetectCloak = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "zerg-mutalisk-selected",
    "acknowledge", "zerg-mutalisk-acknowledge",
    "ready", "zerg-mutalisk-ready",
    "help", "zerg-units-attacked",
    "dead", "zerg-mutalisk-death"} } )