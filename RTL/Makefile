PROJECT=Bluster
PART=XC9572XL-10-VQ64
WORKDIR=tmp

CABLE=usb21

CPLDFITFLAGS=-loc on -slew fast -init low -terminate keeper -nogclkopt -nogtsopt -nogsropt -power std -ignoretspec -optimize speed -keepio -inputs 54 -pterms 25

.PHONY:	all clean

all:	$(PROJECT)_rev_a.jed $(PROJECT)_rev_b.jed

$(PROJECT).prj:
	@echo verilog work $(PROJECT).v > $@

$(WORKDIR)/$(PROJECT)_rev_a.ngc:	$(PROJECT).v $(PROJECT).prj
	@mkdir $(WORKDIR) || true
	@sed -r "s#^(-top).*#\1 $(PROJECT)#g;s#^(-ofn).*#\1 ..\/$@#g;s#^(-ifn).*#\1 ../$(PROJECT).prj#g;s#^(-define).*#\1 {$(REV_A_DEFINES)}#g" template.xst > $@.xst
	cd $(WORKDIR) && xst -ifn ../$@.xst -ofn $(PROJECT)-xst.log

$(WORKDIR)/$(PROJECT)_rev_a.ngd:	$(WORKDIR)/$(PROJECT)_rev_a.ngc $(PROJECT)_rev_a.ucf
	cd $(WORKDIR) && ngdbuild -p $(PART) -uc ../$(PROJECT)_rev_a.ucf ../$< ../$@

$(WORKDIR)/$(PROJECT)_rev_b.ngc:	$(PROJECT).v $(PROJECT).prj
	@mkdir $(WORKDIR) || true
	@sed -r "s#^(-top).*#\1 $(PROJECT)#g;s#^(-ofn).*#\1 ..\/$@#g;s#^(-ifn).*#\1 ../$(PROJECT).prj#g;s#^(-define).*#\1 {$(REV_B_DEFINES)}#g" template.xst > $@.xst
	cd $(WORKDIR) && xst -ifn ../$@.xst -ofn $(PROJECT)-xst.log

$(WORKDIR)/$(PROJECT)_rev_b.ngd:	$(WORKDIR)/$(PROJECT)_rev_b.ngc $(PROJECT)_rev_b.ucf
	cd $(WORKDIR) && ngdbuild -p $(PART) -uc ../$(PROJECT)_rev_b.ucf ../$< ../$@

$(WORKDIR)/%.vm6:	$(WORKDIR)/%.ngd %.ucf
	cd $(WORKDIR) && cpldfit $(CPLDFITFLAGS) -p $(PART) ../$<

%.jed:	$(WORKDIR)/%.vm6
	hprep6 -i $<
	cp $@ ../Binary/

clean:
	rm -rvf tmp
	rm *.jed
	rm *.prj

flash:	$(PROJECT).jed
	@echo "setMode -bs\n"\
	"setCable -p $(CABLE)\n"\
	"identify\n"\
	"assignfile -p 1 -file $<\n"\
	"erase -p 1\n"\
	"program -p 1\n"\
	"verify -p 1\n"\
	"exit" > batch
	LD_PRELOAD=/opt/Xilinx/usb-driver/libusb-driver.so impact -batch batch
