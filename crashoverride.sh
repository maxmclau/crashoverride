#!/bin/bash

# The MIT License (MIT)

# Copyright (c) 2016 Maxmillion McLaughlin

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

_crashoverrideMessages=( "リサフ" "ランク420" "現代のコ" "のコンピュー" )

# $1  intensity
# $2  population
# $3  pace
function crashoverride () {
  local _intensity=$1
  local _population=$2
  local _pace=$2

  local _width=$( tput cols )
  local _height=$( tput lines )

  for (( z=1; z<=$_population; z++ )); do
    local _xpos=$( _crashoverrideRandom 0 $_width )
    local _ypos=$( _crashoverrideRandom 0 $_height )



    sleep 0.1
  done &
}

# $1  x-pos
# $2  y-pos
# $3  color
function _crashoverrideWindow () {
  local _xpos=$1
  local _ypos=$2
}

# $1  min
# $2  max
function _crashoverrideRandom () {
  local _min=$1
  local _max=$2

  echo $(( ( RANDOM % $_max )  + $_min ))

  #local _rand=$(printf "0.%03d%02d" $(( $RANDOM % 1000 )) $(( $RANDOM % 100)))
  #echo "$a * $_min " | bc -l
}

crashoverride 10 20 1
