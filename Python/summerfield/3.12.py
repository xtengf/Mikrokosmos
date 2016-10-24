Python 3.5.2 (v3.5.2:4def2a2901a5, Jun 26 2016, 10:47:25) 
[GCC 4.2.1 (Apple Inc. build 5666) (dot 3)] on darwin
Type "copyright", "credits" or "license()" for more information.
>>> import collections
>>> Aircraft = collections.namedtuple("Aircraft", "manufacturer model seating")
>>> Seating = collections.namedtuple("Seating", "minimum maximum")
>>> aircraft = Aircraft("Airbus", "A320-200", Seating(100, 220))
>>> aircraft.seating.m
Traceback (most recent call last):
  File "<pyshell#4>", line 1, in <module>
    aircraft.seating.m
AttributeError: 'Seating' object has no attribute 'm'
>>> aircraft.seating.maximum
220
>>> print("{0} {1}".format(aircraft.manufacturer, aircraft.model))
Airbus A320-200
>>> "{0.manufacturer}{0.model}".format(aircraft)
'AirbusA320-200'
>>> "{0.manufacturer} {0.model}".format(aircraft)
'Airbus A320-200'
>>> print("{0.manufacturer} {0.model}".format(aircraft))
Airbus A320-200
>>> print("{manufacturer} {model}".format(**aircraft._as))
Traceback (most recent call last):
  File "<pyshell#10>", line 1, in <module>
    print("{manufacturer} {model}".format(**aircraft._as))
AttributeError: 'Aircraft' object has no attribute '_as'
>>> print("{manufacturer} {model}".format(**aircraft._asdict))
Traceback (most recent call last):
  File "<pyshell#11>", line 1, in <module>
    print("{manufacturer} {model}".format(**aircraft._asdict))
TypeError: format() argument after ** must be a mapping, not method
>>> "{manufacturer} {model}".format(**aircraft._asdict())
'Airbus A320-200'
>>> 
