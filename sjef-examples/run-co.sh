rm -rf co.molpro &&  sjef -s molpro new co  && sjef -s molpro import co co.inp
sjef -s molpro -b marat run co -v -v -v
