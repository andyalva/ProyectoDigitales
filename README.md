# Proyecto Digitales 2

Transaction Layer PCIe

Grupo #4

## Integrantes

Andrés Alvarado B30316

Alejandro Rojas B36049

Fernando González B43023

## División de Trabajo

* Andres Alvarado
  * Buffer
* Alejandro Rojas
  * FSM
* Fernando González
  * Round Robin

## Make it work


## Documentación

El reporte se encuentra en un archivo de PDF en la carpeta "docs".

## Señales FSM

Inputs: clk, reset, init, almost_full, almost_empty, empty_Fifo, no_empty_Fifo, Fifo_overflow(Error cuando esta lleno el FIFO y llega otro dato), data_Fifo(Datos que llegan del FIFO)

Outputs: error_full, pausa, continua,

