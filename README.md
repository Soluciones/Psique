## Psique

[![Build Status](https://travis-ci.org/Soluciones/Psique.svg)](https://travis-ci.org/Soluciones/Psique)
[![Code Climate](https://codeclimate.com/github/Soluciones/Psique/badges/gpa.svg)](https://codeclimate.com/github/Soluciones/Psique)

Style Guide in Sass for Emergia's apps Rails

## Control de versiones

### Incrementar versión en el código

Cuando el cambio ya está _mergeado_ en `master`, es hora de incrementar el contador de versiones para hacer la subida. En `lib/psique/version.rb`:

    module Psique
      VERSION = '1.0.2'
    end

### Escribir changelog

En `changelog.txt`, se comentan las características que se han añadido en esta versión.

###  Subir cambios a git y crear _tag_

En la línea de comandos, desde el directorio del engine:

    > git commit -m "Cambio de version"
    > git push origin
    > git tag 1.0.2
    > git push origin 1.0.2
