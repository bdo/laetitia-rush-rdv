# Laetitia Rush RDV

## Installation

Clone the repository and run the following command:

```bash
./start.sh
```

The script will ask for your _intranet_ password, and will then print the current time and `close` every few seconds.

Once the Rush scheduling is open it will exit.

```
➜  laetitia-rush-rdv git:(master) ./start.sh
Password: ••••
<div class="item rdv expandable open" data-activite-project="276487" data-project-title="[C++ - Piscine][RUSH] 1">
16:31:18 close
16:31:22 close
16:31:25 close
16:31:29 open
➜  laetitia-rush-rdv git:(master)
```

To play a sound once the rush scheduling is open, follow the simple example instructions below.

1. Install pulseaudio
```bash
sudo apt install pulseaudio
```

2. Run script and play song
```bash
./start.sh && paplay ACDC_-_Back_In_Black-sample.ogg
```
