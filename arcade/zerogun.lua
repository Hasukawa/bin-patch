require("model2")
function Init()
end
function Frame()
	Model2_SetWideScreen(1)
	Model2_SetStretchALow(1)
	Model2_SetStretchBLow(1)
	Model2_SetStretchAHigh(1)
	Model2_SetStretchBHigh(1)
end

function health_cheatf(value)
	I960_WriteWord(RAMBASE+0x12662,9); -- 1P 9 health
end
function ammo_cheatf(value)
	I960_WriteWord(RAMBASE+0x12664,6); -- 1P 6 ammo
end
Options =
{
	health_cheat={name="Infinite Health",values={"Off","On"},runfunc=health_cheatf},
	ammo_cheat={name="Infinite Bombs",values={"Off","On"},runfunc=ammo_cheatf}
}