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

## Questions

* shear reinforcement - Fe500? page 48
* shell thin vs thick differece?

## Lecture: 210 9028 984
