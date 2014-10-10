
%embeddedMults = 'off';
embeddedMults = 'on';

subsys = {[bdroot '/Rx Path/2-Ch Decimation B/ROMS & Mults'], [bdroot '/Tx Path/2-Ch Interp B/Mults & ROMs']};

for s = 1:length(subsys)
	clear mults
	mults = find_system(subsys{s}, 'ReferenceBlock', 'xbsIndex_r4/Mult');
	
	
	for m=1:length(mults)
		set_param(mults{m}, 'use_embedded', embeddedMults);
	end
end