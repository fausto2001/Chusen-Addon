SLASH_HOLA1 = "/holam"

local function HolaHandler(name)
    PlaySound(416);
    if(string.len(name) > 0) then
    message("HOLA, " .. name .. "!!!");
    else
    local handle = UnitName("player");
    message("HOLA, " .. handle .. "!!!");
    end
end

SlashCmdList["HOLA"] = HolaHandler;