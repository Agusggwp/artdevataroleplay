Config_Badside = {}
Config_Badside.CustomHandling = true

Config_Badside.Location = {

    ["biker"] = { 

        bossmenu = { x =  988.48, y = -94.41, z = 74.84 },

        --vehicle = {x = 963.700012, y = -122.400002, z = 74.400002},

        vehicle_spawn = {x =  485.92, y = -1334.70, z = 29.29, h = 135.42}
    
    },

    ["ambulance"] = { 

        bossmenu = { x =  988.48, y = -94.41, z = 74.84 },

        vehicle = {x = 963.700012, y = -122.400002, z = 74.400002},

        vehicle_spawn = {x = 352.4, y = -588.04, z = 74.16, h = 68.08}
    
    },


    ["cartel"] = {

        bossmenu = { x = -805.83 , y = 167.74, z = 76.74},

        vehicle = {x = -807.93, y = 181.11, z = 72.1},

        vehicle_spawn = {x = -1919.68, y = 2050.25, z = 140.74, h =351.02},

    },

    ["mafia"] = {

        bossmenu = { x = -95.12, y = 820.28, z = 235.72},

        vehicle = {x = -105.8, y = 833.06, z = 235.65},

        vehicle_spawn = {x = -107.45, y = 834.03, z = 235.71, h = 354.07},

    },

    ["gangster"] = {

        bossmenu = { x = -1876.19 , y = 2060.79, z = 145.57},

        vehicle = {x = -1886.39, y = 2062.39, z = 140.98},

        vehicle_spawn = {x = 89.42, y = -1966.36, z = 20.743, h = 96.63},

    },

    ["gangster2"] = {

        bossmenu = { x = -1876.19 , y = 2060.79, z = 145.57},

        vehicle = {x = -1886.39, y = 2062.39, z = 140.98},

        vehicle_spawn = {x = 968.57, y = -1821.64, z = 31.09, h = 96.63},

    },

    ["gangster3"] = {

        bossmenu = { x = -18.82 , y = -1431.59, z = 31.1},

        vehicle = {x = -817.49, y = 182.63, z = 72.23},

        vehicle_spawn = {x = -823.84, y = 182.25, z = 71.76, h = 122.99},

    },

    ["vagoz"] = {

        bossmenu = { x = 439.81112670898, y = -1886.4116210938, z = 31.739238739014},

        vehicle = {x = 447.37588500977, y = -1897.1107177734, z = 26.697019577026},

        vehicle_spawn = {x = 126.39, y = -2002.94, z = 18.58, h = 344.64}, 

    },

    ["pedagang"] = { 

        bossmenu = { x =  988.48, y = -94.41, z = 74.84 },

        vehicle = {x = -593.56, y = -1060.32, z = 22.36},

        vehicle_spawn = {x = 1623.84, y = 3903.64, z = 33.76, h = 154}
    
    },

    ["mechanic"] = { 

        bossmenu = { x = -345.0385, y =-124.9230, z = 39.0096,},

        vehicle = {x = 963.60, y = -117.69, z = 74.35},

        vehicle_spawn = {x = 51.08, y = 6551.56, z = 32.96, h = 127.44}
    
    },
}


Config_Badside.handleMods = {
	{"fMass", 1800.000000},
	{"fInitialDragCoeff",6.000000},
	{"fPercentSubmerged",85.000000},
	{"fDriveBiasFront",0.100000},
	{"nInitialDriveGears",5},
	{"fInitialDriveForce",0.23000},
	{"fDriveInertia",1.000000},
	{"fClutchChangeRateScaleUpShift",2.500000},
	{"fClutchChangeRateScaleDownShift",2.500000},
	{"fInitialDriveMaxFlatVel",230.000000},
	{"fBrakeForce",4.500000},
	{"fBrakeBiasFront",0.525000},
	{"fHandBrakeForce",6.300000},
	{"fSteeringLock",40.000000},
	{"fCollisionDamageMult", 0.100000},
	{"fWeaponDamageMult", 1.000000},
	{"fDeformationDamageMult", 0.500000},
	{"fEngineDamageMult", 1.500000},
	{"fPetrolTankVolume", 65.000000},
	{"fOilVolume", 5.000000},
	{"fSeatOffsetDistX", 0.000000},
	{"fSeatOffsetDistY", 0.000000},
	{"fSeatOffsetDistZ", 0.000000},
	{"nMonetaryValue", 25000},
}

Config_Badside.Vec1 = vector3(0.000000, 0.000000, 0.000000)
Config_Badside.Vec2 = vector3(1.000000, 1.600000, 1.700000)

Config_Badside.handlingData = {
    -- generic handling data
    "handlingName",
    "fMass",
    "fInitialDragCoeff",
    "fPercentSubmerged",
    "vecCentreOfMassOffset",
    "vecInertiaMultiplier",
    "fDriveBiasFront",
    "nInitialDriveGears",
    "fInitialDriveForce",
    "fDriveInertia",
    "fClutchChangeRateScaleUpShift",
    "fClutchChangeRateScaleDownShift",
    "fInitialDriveMaxFlatVel",
    "fBrakeForce",
    "fBrakeBiasFront",
    "fHandBrakeForce",
    "fSteeringLock",
    "fTractionCurveMax",
    "fTractionCurveMin",
    "fTractionCurveLateral",
    "fTractionSpringDeltaMax",
    "fLowSpeedTractionLossMult",
    "fCamberStiffnesss",
    "fTractionBiasFront",
    "fTractionLossMult",
    "fSuspensionForce",
    "fSuspensionCompDamp",
    "fSuspensionReboundDamp",
    "fSuspensionUpperLimit",
    "fSuspensionLowerLimit",
    "fSuspensionRaise",
    "fSuspensionBiasFront",
    "fAntiRollBarForce",
    "fAntiRollBarBiasFront",
    "fRollCentreHeightFront",
    "fRollCentreHeightRear",
    "fCollisionDamageMult",
    "fWeaponDamageMult",
    "fDeformationDamageMult",
    "fEngineDamageMult",
    "fPetrolTankVolume",
    "fOilVolume",
    "fSeatOffsetDistX",
    "fSeatOffsetDistY",
    "fSeatOffsetDistZ",
    "nMonetaryValue",
    "strModelFlags",
    "strHandlingFlags",
    "strDamageFlags",
    "AIHandling",

    -- CCarHandlingData
    "fBackEndPopUpCarImpulseMult",
    "fBackEndPopUpBuildingImpulseMult",
    "fBackEndPopUpMaxDeltaSpeed",
    "fCamberFront",
    "fCamberRear",
    "fCastor",
    "fToeFront",
    "fToeRear",
    "fEngineResistance",
    "strAdvancedFlags",

    -- CFlyingHandlingData

    "fThrust",
    "fThrustFallOff",
    "fThrustVectoring",
    "fYawMult",
    "fYawStabilise",
    "fSideSlipMult",
    "fRollMult",
    "fRollStabilise",
    "fPitchMult",
    "fPitchStabilise",
    "fFormLiftMult",
    "fAttackLiftMult",
    "fAttackDiveMult",
    "fGearDownDragV",
    "fGearDownLiftMult",
    "fWindMult",
    "fMoveRes",
    "vecTurnRes",
    "vecSpeedRes",
    "fGearDoorFrontOpen",
    "fGearDoorRearOpen",
    "fGearDoorRearOpen2",
    "fGearDoorRearMOpen",
    "fTurublenceMagnitudeMax",
    "fTurublenceForceMulti",
    "fTurublenceRollTorqueMulti",
    "fTurublencePitchTorqueMulti",
    "fBodyDamageControlEffectMult",
    "fInputSensitivityForDifficulty",
    "fOnGroundYawBoostSpeedPeak",
    "fOnGroundYawBoostSpeedCap",
    "fEngineOffGlideMulti",
    "handlingType",
    "fThrustFallOff",
    "fThrustFallOff",

    -- CCarHandlingData

    "fBackEndPopUpCarImpulseMult",
    "fBackEndPopUpBuildingImpulseMult",
    "fBackEndPopUpMaxDeltaSpeed",


    -- CBikeHandlingData

    "fLeanFwdCOMMult",
    "fLeanFwdForceMult",
    "fLeanBakCOMMult",
    "fLeanBakForceMult",
    "fMaxBankAngle",
    "fFullAnimAngle",
    "fDesLeanReturnFrac",
    "fStickLeanMult",
    "fBrakingStabilityMult",
    "fInAirSteerMult",
    "fWheelieBalancePoint",
    "fStoppieBalancePoint",
    "fWheelieSteerMult",
    "fRearBalanceMult",
    "fFrontBalanceMult",
    "fBikeGroundSideFrictionMult",
    "fBikeWheelGroundSideFrictionMult",
    "fBikeOnStandLeanAngle",
    "fBikeOnStandSteerAngle",
    "fJumpForce",
}