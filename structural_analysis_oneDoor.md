# Structural Analysis

## Soil type

* dependent on bearing capacity - new code
* soil type deppendent on N value of SPT test - old code

## Beam depth

* L/15 deflectionn criteria

## Pier/Spandrel

* if vertical wall to be checked - pier
* if vertical member in plan should have separate pier level - can be same for different elevations
* spandrel gives horizontal bars

## Diaphragm

* rigid - each column resists lateral force propotional to column stiffness
* semi-rigid/flexible - resisting force dependent on contributing area

## Loads

* Dead - self weight, wall load, partition wall, floor finish, stair
* Live - <= 3 kN/m2, > 3 kN/m2, roof live load
* Seismic Load - Eqx, Eqy

## Time Period

* if top floor area less than 50% of lower floor, do not consider the floor

## Static vs Dynamic Analysis

* irregular buildings - dynamic analysis according to old code
* zone II building only less than 15m can be static according to new code

## Seismic Code - difference with NBC

* NBC 105
* C_d = CZIK
* Kathmandu Z = 1
* I = 1
* K = 1 for SMRF
* c = 0.08
* C_d = 1 x 1 x 1 x 0.08 = 0.08

## ETABS Setting for Seismic accoding to NBC105

* instead of IS 1893, select user coefficient
* give base shear coefficient, C
* building height exp, k = 1 for NBC code, because it is linear
* k = 2 for IS code, because it is quadratic

## Load Calculation

* Dead Load - IS 875 Part I
* Self Weight - calculated by Etabs for members modelled
* Required self weight - wall, partition, fllor finish, water tank
* wall outer - 10.24 kN/m considering 80% opening
* wall inner - 5.12 kN/m considering 80% opening
* partition wall - 1.5 kN/m2
* water tank - 1.5 kN/m2
* floor finish - 1.25 kN/m2
* lift -> 15-17 kN/m2
* Live Load - IS 875 Part II

## Design Checks

* Displacement - max disp. <= 0.004 * h for eqx, eqy, rsx and rsy
* Drift - interstory drift ratio = relative displacement/height < 0.004 for eqx, eqy, rsx, rsy
* Modal Participating Mass - up to 3rd mode greater than 65%, up to last mode greater than 90%
* Eccentricity - 5 to 10% neglected, if between than 10%-15% adjust override in eq load, if greater than 15% - revise the design
* Time Period - approx. 0.1 x number of storey

## Detailing

* SP 34
* IS 13920

## Questions

* shear reinforcement - Fe500? page 48
* shell thin vs thick difference?
* shear wall / lift - etabs or manual?
* strong column / weak beam manual check? for all joints?

## Seismic GAP

* minm gap = Response Reduction Factor x (deflection Bldg1 + delfection Bldg2)

## Footing

* Strap beams for eccentric foundations
* Soil Stiffness : k = F/x
* Soil Subgrade Modulus = SBC (kN/m2) x factor of safety x 1/Allowable Settlement in m
* Factor of Safety = 3

## Lecture: 210 9028 984

2612
