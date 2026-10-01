// Exporting image from the script 
// Usage:  savefig("lab1_ex2")

function savefig(name)
    if ~isdir("figures") then
        mkdir("figures");
    end
    xs2png(gcf(), "figures/" + name + ".png");
    mprintf("  saved figures/%s.png\n", name);
endfunction
