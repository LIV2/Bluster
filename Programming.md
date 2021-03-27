# Programming XC95xxXL CPLD's with Raspberry Pi

Programming the CPLD from a Raspberry Pi is easy thanks to a tool called xc3sprog just follow the simple steps below and you'll be done in no time!

## Install xc3sprog

```shell
# Add Repo
curl https://apt.matrix.one/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.matrix.one/raspbian $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/matrixlabs.list

# Install
sudo apt-get update
sudo apt install matrixio-xc3sprog
```

## Connect RPi to JTAG header

While you can power the target from the Raspberry Pi's 3v pin I'd recommend you instead power the board by installing it in your Amiga and having it powered while programming.  
Make the following connections from your RPi:  
![PCB](Docs/gpio.png?raw=True)

|Pin|Signal|
|---|------|
|7|TMS|
|11|TCK|
|13|TDO|
|15|TDI|
|9|GND|

## Program

```
sudo xc3sprog -c sysfsgpio_creator -p 0 -v Buster.jed
```