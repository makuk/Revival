#loader preinit
#priority 999

##imports
import extrautilities2.Tweaker.IMachine;
import extrautilities2.Tweaker.IMachineRegistry;
import extrautilities2.Tweaker.IMachineSlot;

##vars
val Mixer = extrautilities2.Tweaker.IMachineRegistry.createNewMachine(
    "mixer",
    40000, 
    400, 
    [IMachineSlot.newItemStackSlot("input1"), IMachineSlot.newItemStackSlot("input2")], 
    [IMachineSlot.newItemStackSlot("output")], 
    "extrautils2:machine/mixer_front", 
    "extrautils2:machine/mixer_front_active"
);