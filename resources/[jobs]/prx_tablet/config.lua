Config = {}

Config.UseJobCreator = true -- Use Job Creator

Config.UseItem = false --Use tablet ITEM

Config.VIPinPerfil = false --Get the column vip in the users table
Config.PenalCode = {
    
    {title = true, label = 'Chapter I - Traffic offense'},
    
    {title = false, label = 'Art. 1.1 - Excessive use of horn.', price = 250, time = '0 months'},
    {title = false, label = 'Art. 1.2 - Driving on opposite lane.', price = 250, time = '0 months'},
    {title = false, label = 'Art. 1.3 - Illegal turn.', price = 300, time = '0 months'},
    {title = false, label = 'Art. 1.4 - Driving off-road.', price = 270, time = '0 months'},
    {title = false, label = 'Art. 1.5 - Non-cooperative behavior .', price = 550, time = '0 months'},
    {title = false, label = 'Art. 1.6 - Bad condition.', price = 250, time = '0 months'},
    {title = false, label = 'Art. 1.7 - Illegal Parking.', price = 550, time = '0 months'},
    {title = false, label = 'Art. 1.8 - Reckless driving.', price = 650, time = '0 months'},
    {title = false, label = 'Art. 1.9 - Failure to comply with vehicle information.', price = 350, time = '0 months'},
    {title = false, label = 'Art. 1.10 - Ignore traffic signs.', price = 350, time = '0 months'},
    {title = false, label = 'Art. 1.11 - Skip a traffic light.', price = 320, time = '0 months'},
    {title = false, label = 'Art. 1.12 - Tresspassing.', price = 750, time = '8 months'},
    {title = false, label = 'Art. 1.13 - No license plate.', price = 1500, time = '8 months'},
    {title = false, label = 'Art. 1.14 - Riding without helmet.', price = 300, time = '0 months'},
    {title = false, label = 'Art. 1.15 - Skip a traffic control.', price = 800, time = '5 months'},
    {title = false, label = 'Art. 1.16 - Fake vehicle documents.', price = 600, time = '5 months'},
    {title = false, label = 'Art. 1.17 - Driving past speed limits.', price = 700, time = '0 months'},
    {title = false, label = 'Art. 1.18 - Driving unsuitable vehicle for the road.', price = 1000, time = '0 months'},
    {title = false, label = 'Art. 1.19 - Exceed the speed limit in secondary roads.', price = 575, time = '0 months'},
    {title = false, label = 'Art. 1.20 - Exceed the speed limit on highways.', price = 750, time = '0 months'},
    {title = false, label = 'Art. 1.21 - Exceed a continuous line.', price = 270, time = '0 months'},
    {title = false, label = 'Art. 1.22 - Continuous online advance.', price = 325, time = '0 months'},
    {title = false, label = 'Art. 1.23 - Not stopping on a stop sign.', price = 275, time = '0 months'},
    {title = false, label = 'Art. 1.24 - Driving under the influence of alcohol', price = 500, time = '0 months'},
    {title = false, label = 'Art. 1.25 - Driving under the effects of narcotic substances.', price = 750, time = '5 months'},
    {title = false, label = 'Art. 1.26 - Not respecting pedestrians.', price = 350, time = '0 months'},
    {title = false, label = 'Art. 1.27 - Text and drive.', price = 250, time = '0 months'},
    {title = false, label = 'Art. 1.28 - Not using the corresponding lights on public roads.', price = 275, time = '0 months'},
    {title = false, label = 'Art. 1.29 - Not giving priority to emergency vehicles.', price = 630, time = '0 months'},
    {title = false, label = 'Art. 1.30 - Traffic obstruction', price = 630, time = '0 months'},


    {title = true, label = 'Capítulo II - Agresiones, Erroneous disturbances and behaviors'},

    
    {title = false, label = 'Art. 2.01 - Riots on public roads', price = 1000, time = '0 months'},
    {title = false, label = 'Art. 2.02 - Aggression to a civilian.', price = 2000, time = '0 months'},
    {title = false, label = 'Art. 2.03 - Not respecting civilian.', price = 500, time = '0 months'},
    {title = false, label = 'Art. 2.04 - Verbal threat to a civilian.', price = 750, time = '0 months'},
    {title = false, label = 'Art. 2.05 - Sexual assault.', price = 1500, time = '5 months'},
    {title = false, label = 'Art. 2.06 - Disturbance of public order.', price = 750, time = '5 months'},
    {title = false, label = 'Art. 2.07 - Prostitution on public roads.', price = 800, time = '5 months'},
    {title = false, label = 'Art. 2.08 - Violation attempt.', price = 2500, time = '20 months'},
    {title = false, label = 'Art. 2.09 - Violation.', price = 5000, time = '30 months'},
    {title = false, label = 'Art. 2.10 - Violation of a minor.', price = 5000, time = '60 months'},
    {title = false, label = 'Art. 2.11 - Illegal marketing.', price = 550, time = '0 months'},
    {title = false, label = 'Art. 2.12 - Illegal manifestation.', price = 1500, time = '0 months'},
    {title = false, label = 'Art. 2.13 - Vandalism.', price = 875, time = '0 months'},
    {title = false, label = 'Art. 2.14 - Psychological harassment.', price = 2000, time = '10 months'},
    {title = false, label = 'Art. 2.15 - Sexual harassment.', price = 5000, time = '10 months'},
    {title = false, label = 'Art. 2.16 - Identity fraud.', price = 4500, time = '5 months'},
    {title = false, label = 'Art. 2.17 - Racism.', price = 800, time = '0 months'},
    {title = false, label = 'Art. 2.18 - Homophobia.', price = 800, time = '0 months'},
    {title = false, label = 'Art. 2.19 - Driving on public roads with hidden face.', price = 520, time = '0 months'},
    {title = false, label = 'Art. 2.20 - Driving with minimal or no clothes.', price = 520, time = '0 months'},
    {title = false, label = 'Art. 2.21 - Driving on public roads without a t -shirt.', price = 500, time = '0 months'},
    {title = false, label = 'Art. 2.22 - Driving on public roads carrying a bulletproof vest.', price = 400, time = '0 months'},
    {title = false, label = 'Art. 2.23 - Denial to identify.', price = 3200, time = '6 months'},
    {title = false, label = 'Art. 2.24 - Obstruction of justice.', price = 1500, time = '10 months'},
    {title = false, label = 'Art. 2.25 - Violation of police perimeter.', price = 3000, time = '5 months'},
    {title = false, label = 'Art. 2.26 - Crime of malicious damage.', price = 750, time = '0 months'},
    {title = false, label = 'Art. 2.27 - Reckless damage.', price = 400, time = '0 months'},
    {title = false, label = 'Art. 2.28 - Violate a departure order with a final sentence.', price = 1000, time = '10 months'},
    {title = false, label = 'Art. 2.29 - Illegal entry.', price = 3500, time = '10 months'},
    {title = false, label = 'Art. 2.30 - Participation in illegal race.', price = 920, time = '6 months'},
    {title = false, label = 'Art. 2.31 - Violate the privacy right of a citizen.', price = 10000, time = '10 months'},
    {title = false, label = 'Art. 2.32 - Failure to respect a public official.', price = 600, time = '0 months'},
    {title = false, label = 'Art. 2.33 - Verbal threat to a public official', price = 750, time = '5 months'},
    {title = false, label = 'Art. 7.1 - Vehicle theft.', price = 1800, time = '5 months'},


    {title = true, label = 'Chapter III - Robberies and assaults'},


    {title = false, label = 'Art. 7.2 - Import vehicle theft.', price = 2000, time = '10 months'},
    {title = false, label = 'Art. 7.3 - Assault on civillian.', price = 1700, time = '10 months'},
    {title = false, label = 'Art. 7.4 - Theft', price = 2000, time = '5 months'},
    {title = false, label = 'Art. 7.5 - Theft of a commercial establishment.', price = 4000, time = '10 months'},
    {title = false, label = 'Art. 7.5.1 - Theft of a commercial establishment with homicide attempt.', price = 6500, time = '15 months'},
    {title = false, label = 'Art. 7.5.2 - Attempt to theft of a commercial establishment.', price = 3000, time = '5 months'},
    {title = false, label = 'Art. 7.5.3 - Accomplice of robbery.', price = 3000, time = '5 months'},
    {title = false, label = 'Art. 7.6 Robbery of jewelry', price = 3000, time = '10 months'},
    {title = false, label = 'Art. 7.7 Robo a Yate', price = 3500, time = '20 months'},
    {title = false, label = 'Art. 7.8 Robbing Ammu-Nation', price = 8000, time = '10 months'},
    {title = false, label = 'Art. 7.9 Robbery of federal', price = 20000, time = '25 months'},
    {title = false, label = 'Art. 7.9 Bank Robbery', price = 15000, time = '15 months'},


    {title = true, label = 'Chapter IV - Holding of weapons and illegal objects.'},


    {title = false, label = 'Art. 4.01 - Possession of an illegal white weapon on public roads.', price = 1500, time = '0 months'},
    {title = false, label = 'Art. 4.02 - Exhibition of an illegal white weapon on public roads.', price = 1750, time = '0 months'},
    {title = false, label = 'Art. 4.03 - Possession of an illegal weapon on public roads.', price = 3100, time = '6 months'},
    {title = false, label = 'Art. 4.04 - Exhibition of an illegal white weapon on public roads.', price = 3310, time = '7 months'},
    {title = false, label = 'Art. 4.05 - Possession of an illegal firearm (small caliber).', price = 7000, time = '10 months'},
    {title = false, label = 'Art. 4.06 - Possession of an illegal firearm (medium caliber).', price = 12000, time = '14 months'},
    {title = false, label = 'Art. 4.07 - Possession of an illegal firearm (high caliber automatic).', price = 20000, time = '20 months'},
    {title = false, label = 'Art. 4.08 - Exhibition of an illegal firearm (low caliber).', price = 7500, time = '12 months'},
    {title = false, label = 'Art. 4.09 - Exhibition of an illegal firearm (medium caliber).', price = 12500, time = '16 months'},
    {title = false, label = 'Art. 4.10 - Exhibition of an illegal firearm (high caliber automatic).', price = 21000, time = '22 months'},
    {title = false, label = 'Art. 4.11 - Possession of robbery tools.', price = 3750, time = '7 months'},
    {title = false, label = 'Art. 4.12 - Possession of explosive tools.', price = 4200, time = '10 months'},
    {title = false, label = 'Art. 4.13 - Possession of illegal ammunition and accessories.', price = 20, time = '0 months'},
    {title = false, label = 'Art. 4.14 - Weapons Trafficking.', price = 30000, time = '30 months'},


    {title = true, label = 'Chapter V - Possession and traffic of foreign exchange.'},


    {title = false, label = 'Art. 5.01 - Black money possession $1 - $5000', price = 2000, time = '0 months'},
    {title = false, label = 'Art. 5.02 - Black money possession $5001 - $10000', price = 6000, time = '6 months'},
    {title = false, label = 'Art. 5.03 - Black money possession $10001 - $30000', price = 12000, time = '15 months'},
    {title = false, label = 'Art. 5.04 - Currency traffic.', price = 25000, time = '30 months'},
    {title = false, label = 'Art. 5.05 - Possession of illegal jewels.', price = 5000, time = '10 months'},
    {title = false, label = 'Art. 5.06 - Sale of illegal jewels.', price = 10000, time = '20 months'},


    {title = true, label = 'Chapter VI - Crimes against Public Health.'},


    {title = false, label = 'Art. 6.01 - Weed possession.', price = 400, time = '0 months'},
    {title = false, label = 'Art. 6.02 - Opium possession.', price = 100, time = '0 months'},
    {title = false, label = 'Art. 6.03 - Meth possession.', price = 300, time = '0 months'},
    {title = false, label = 'Art. 6.04 - MDMA possession in pills (ecstasy).', price = 150, time = '0 months'},
    {title = false, label = 'Art. 6.04.1 - MDMA possession in boats (ecstasy).', price = 1500, time = '0 months'},
    {title = false, label = 'Art. 6.05 - Cocaine possession.', price = 600, time = '0 months'},
    {title = false, label = 'Art. 6.06 - Drug sales.', price = 2000, time = '10 months'},
    {title = false, label = 'Art. 6.07 - Drug trafficking.', price = 4000, time = '20 months'},


    {title = true, label = 'Chapter VII - Crimes against the integrity of the citizen.'},


    {title = false, label = 'Art. 7.01 - Attempt to kidnapping a civilian.', price = 2500, time = '7 months'},
    {title = false, label = 'Art. 7.02 - Kidnapping of a civilian.', price = 5000, time = '10 months'},
    {title = false, label = 'Art. 7.03.1 - Third degree Homicide attempt.', price = 6125, time = '10 months'},
    {title = false, label = 'Art. 7.03.2 - Second degree homicide attmpt.', price = 7250, time = '15 months'},
    {title = false, label = 'Art. 7.03.3 - First degree homicide attempt.', price = 12500, time = '17 months'},
    {title = false, label = 'Art. 7.04.1 - Third degree homicide.', price = 12500, time = '17 months'},
    {title = false, label = 'Art. 7.04.2 - Second degree homicide.', price = 15500, time = '20 months'},
    {title = false, label = 'Art. 7.04.4 - First degree homicide.', price = 17500, time = '25 months'},
    {title = false, label = 'Art. 7.05 - First degree murder.', price = 20000, time = '30 months'},
    {title = false, label = 'Art. 7.06 - Aggression through weapons to a civilian.', price = 2000, time = '5 months'},
    {title = false, label = 'Art. 7.07 - Threat or extortion to a citizen.', price = 3000, time = '7 months'},
    {title = false, label = 'Art. 7.08 - Threat or extortion to a citizen by using weapon.', price = 3500, time = '10 months'},
    {title = false, label = 'Art. 7.09 - Failure to provide relief.', price = 2100, time = '0 months'},
    {title = false, label = 'Art. 7.10 - Cooperator / inductor to suicide attempt.', price = 3500, time = '12 months'},
    {title = false, label = 'Art. 7.11 - Cooperator / Inductor to consummated suicide.', price = 10000, time = '20 months'},
    {title = false, label = 'Art. 7.12 - Medical negligence with injury result.', price = 2500, time = '5 months'},
    {title = false, label = 'Art. 7.13 - Medical negligence with death result', price = 10000, time = '20 months'},


    {title = true, label = 'Chapter VIII - Documents and Licenses.'},


    {title = false, label = 'Art. 8.01 - Documents forgery.', price = 4500, time = '8 months'},
    {title = false, label = 'Art. 8.02 - Possession of a fake document.', price = 3000, time = '6 months'},
    {title = false, label = 'Art. 8.03 - Fraud.', price = 2500, time = '10 months'},
    {title = false, label = 'Art. 8.04 - Agent denial to teach the plate number.', price = 1000, time = '0 months'},
    {title = false, label = 'Art. 8.05 - FALSE DENIENCE, Stem The Annoyance.', price = 2000, time = '0 months'},
    {title = false, label = 'Art. 8.06 - Possesion of expired documents.', price = 1000, time = '0 months'},


    {title = true, label = 'CHAPTER IX - PUBLIC ADMINISTRATION.'},


    {title = false, label = 'Art. 9.01 - Contempt of authority.', price = 1000, time = '0 months'},
    {title = false, label = 'Art. 9.02 - Homicide attempt to the prosecutor.', price = 100000, time = 'Perpetua'},
    {title = false, label = 'Art. 9.03 - Homicide to the prosecutor.', price = 100000, time = 'Perpetua'},
    {title = false, label = 'Art. 9.04 - Federal buildings/facilities.', price = 12500, time = '20 months'},
    {title = false, label = 'Art. 9.05 - Federal buildings/facilities.', price = 12500, time = '20 months'},
    {title = false, label = 'Art. 9.06 - Theft of state elements.', price = 4500, time = '8 months'},
    {title = false, label = 'Art. 9.07 - Damaging state property.', price = 3500, time = '6 months'},
    {title = false, label = 'Art. 9.08 - State weapon robbery.', price = 12000, time = '20 months'},
    {title = false, label = 'Art. 9.09 - Damaging state weapon.', price = 7000, time = '15 months'},
    {title = false, label = 'Art. 9.10 - Theft of a public official.', price = 6500, time = '15 months'},
    {title = false, label = 'Art. 9.11 - Arrest resistance.', price = 1200, time = '5 months'},
    {title = false, label = 'Art. 9.12 - Brotherhood attempt.', price = 2500, time = '5 months'},
    {title = false, label = 'Art. 9.13 - Bribery.', price = 4000, time = '7 months'},
    {title = false, label = 'Art. 9.14 - Dead or disseminate recordings or photographs of a public official.', price = 3100, time = '0 months'},
    {title = false, label = 'Art. 9.15 - Attempt at kidnapping a public official.', price = 5000, time = '15 months'},
    {title = false, label = 'Art. 9.16 - Kidnapping a public official.', price = 10000, time = '20 months'},
    {title = false, label = 'Art. 9.17 - Running from justice.', price = 3500, time = '7 months'},
    {title = false, label = 'Art. 9.18 - Identity Supplant of a State Member.', price = 10000, time = '10 months'},
    {title = false, label = 'Art. 9.19 - Lying or giving false testimony.', price = 4700, time = '7 months'}
}

Config.Treatments = {
    {title = true, label = 'Treatments'}, ----'Health insurance'}

    {title = false, label = 'Treatment', price = 7500},
    {title = false, label = 'Pingsan', price = 12000},
    
    ---{title = true, label = 'Traslados'},

    ---{title = false, label = 'Traslado en ambulancia', price = 450},
    ---{title = false, label = 'Asistencia médica + Traslado en ambulancia', price = 650},
    ---{title = false, label = 'Recate + Traslado en ambulancia', price = 2050},
    
    ---{title = true, label = 'Tratamientos ambulatorios'},
    
    ---{title = false, label = 'Chequeo Médico', price = 450},
    ---{title = false, label = 'Vacunación', price = 250},
    ---{title = false, label = 'Tratamiento de Heridas leves', price = 250},
    ---{title = false, label = 'Analítica Completa', price = 250},


    ---{title = true, label = 'Tratamientos hospitalarios'},

    ---{title = false, label = 'Tratamiento de heridas por traumatismo medio', price = 550},
    ---{title = false, label = 'Sesión de Radioterapia', price = 1050},
    ---{title = false, label = 'Sesión de Quimioterapia', price = 1050},
    ---{title = false, label = 'Radiografía', price = 550},
    ---{title = false, label = 'Escaner TAC', price = 750},
    ---{title = false, label = 'Tratamiento de heridas por traumatismo grave', price = 2050},

    ---{title = true, label = 'Consultas Médicas'},

    ---{title = false, label = 'Consulta de Psiquiatria', price = 750},
    ---{title = false, label = 'Consulta de Urología', price = 750},
    ---{title = false, label = 'Consulta de Oncología', price = 750},
    ---{title = false, label = 'Consulta de Cirugía General', price = 750},
    ---{title = false, label = 'Consulta de Neurologia / Neurocirugia', price = 750},
    ---{title = false, label = 'Consulta de Medicina General', price = 750},


    ---{title = true, label = 'Intervenciones Quirurgicas'},

    ---{title = false, label = 'Cirugía Ambulatoria', price = 5000},
    ---{title = false, label = 'Cirugia Ósea', price = 7000},
    ---{title = false, label = 'Reconstrucción Ósea', price = 10000},
    ---{title = false, label = 'Cirugía Renal / Urológica', price = 12000},
    ---{title = false, label = 'Transplante Renal', price = 52000},
    ---{title = false, label = 'Transplante Hepático', price = 52000},
    ---{title = false, label = 'Cirugía Cardiovascular', price = 15000},
    ---{title = false, label = 'Neurocirugía', price = 25000},
    ---{title = false, label = 'Cirugía Torácica', price = 25000},
    ---{title = false, label = 'Transplante Cardiaco', price = 85000},
    ---{title = false, label = 'Broncoscopia Intervencionista', price = 15000},
    ---{title = false, label = 'Cirugía Pulmonar', price = 15000},
    ---{title = false, label = 'Cirugía Oncológica', price = 25000}
}

Config.MecaPrices = {
    {title = true, label = 'Example title'},
    {title = false, label = 'Example price (modify in the config.lua)', price = 1},
}