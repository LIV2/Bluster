PROJECT=Bluster
PART=XC9572XL-10-VQ64
WORKDIR=tmp
BINDIR=../Binary
CABLE=usb21

CPLDFITFLAGS=-loc on -slew slow -init low -terminate keeper -nogclkopt -nogtsopt -nogsropt -power std -ignoretspec -optimize speed -keepio -inputs 54 -pterms 25

.PHONY:	all clean timing

all:	$(BINDIR)/$(PROJECT)_rev_a.jed $(BINDIR)/$(PROJECT)_rev_b.jed $(BINDIR)/$(PROJECT)_rev_c.jed $(WORKDIR)/$(PROJECT)_rev_b.tim

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

$(WORKDIR)/$(PROJECT)_rev_c.ngc:	$(PROJECT).v $(PROJECT).prj
	@mkdir $(WORKDIR) || true
	@sed -r "s#^(-top).*#\1 $(PROJECT)#g;s#^(-ofn).*#\1 ..\/$@#g;s#^(-ifn).*#\1 ../$(PROJECT).prj#g;s#^(-define).*#\1 {$(REV_C_DEFINES)}#g" template.xst > $@.xst
	cd $(WORKDIR) && xst -ifn ../$@.xst -ofn $(PROJECT)-xst.log

$(WORKDIR)/$(PROJECT)_rev_c.ngd:	$(WORKDIR)/$(PROJECT)_rev_c.ngc $(PROJECT)_rev_c.ucf
	cd $(WORKDIR) && ngdbuild -p $(PART) -uc ../$(PROJECT)_rev_c.ucf ../$< ../$@

$(WORKDIR)/%.tim:	$(WORKDIR)/%.vm6
	cd $(WORKDIR) && taengine -l ../$@ -f $(PROJECT)_rev_b

$(WORKDIR)/%.vm6:	$(WORKDIR)/%.ngd %.ucf
	cd $(WORKDIR) && cpldfit $(CPLDFITFLAGS) -p $(PART) ../$<

%.jed:	$(WORKDIR)/%.vm6
	hprep6 -i $<

$(BINDIR)/%.jed:	%.jed
	cp $^ $@

timing:	$(WORKDIR)/$(PROJECT)_rev_a.tim $(WORKDIR)/$(PROJECT)_rev_b.tim

clean:
	rm -rvf tmp
	rm *.jed
	rm *.prj

flash:	$(PROJECT)_rev_a.jed
	@echo "setMode -bs\n"\
	"setCable -p $(CABLE)\n"\
	"identify\n"\
	"assignfile -p 1 -file $<\n"\
	"erase -p 1\n"\
	"program -p 1\n"\
	"verify -p 1\n"\
	"exit" > batch
	LD_PRELOAD=/opt/Xilinx/usb-driver/libusb-driver.so impact -batch batch
