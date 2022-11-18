#!/bin/sh
sjef -s molpro erase co
sjef -s molpro new co
sjef -s molpro import co co.inp
(while [ ! -f stop ] ; do sjef -s molpro status co ; date ; done)&
sjef -s molpro -b marat run co 
