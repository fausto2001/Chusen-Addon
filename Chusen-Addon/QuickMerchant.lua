local frame = CreateFrame("FRAME", "ChusenAddonFrame");
frame:RegisterEvent("GOSSIP_SHOW");
local BrassboltMechawrenchID = "35594";
local EdnaMullbyID = "1286";
local function eventHandler(self, event, ...)
--BIG split to only get NPC ID.
---@diagnostic disable-next-line: param-type-mismatch
    local npcID = select(2, strsplit(" ",(select(2, strsplit(":",(UnitName("target")..": "..select(6, strsplit("-", UnitGUID("target")))))))));
    if npcID == BrassboltMechawrenchID then
        PlaySound(416);
        SelectGossipOption(GetNumGossipOptions());
    end
end
frame:SetScript("OnEvent", eventHandler);
