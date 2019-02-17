local _, ns = ...
local xCT = ns.xCT
local ct = ns.Config

----------------------------------------------------------------
-- Commands
----------------------------------------------------------------
local function CommandSplit(cmd)
    if (cmd:find("%s")) then
        return strsplit(" ", cmd)
    end
    return cmd
end

SLASH_XCT1 = "/xct"
SlashCmdList["XCT"] = function(cmd)
    local arg1, arg2, arg3 = CommandSplit(cmd)

    if (arg1 == "show") then
        for index, frame in ipairs(xCT) do
            frame.Backdrop:Show()
            frame.Header:Show()
            frame.Text:Show()
        end
    elseif (arg1 == "hide") then
        for index, frame in ipairs(xCT) do
            frame.Backdrop:Hide()
            frame.Header:Hide()
            frame.Text:Hide()
        end
    end
end