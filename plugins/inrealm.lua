-- data saved to moderation.json
-- check moderation plugin
do

local function c_group(msg)
        -- superuser and admins only (because sudo are always has privilege)
        if is_sudo(msg) or is_realm(msg) and is_admin(msg) then
                local group_creator = msg.from.print_name
                create_group_chat (group_creator, group_name, ok_cb, false)
                return 'Group [ '..string.gsub(group_name, '_', ' ')..' ] has been created.'
        end
end

local function c_realm(msg)
        -- superuser and admins only (because sudo are always has privilege)
        if is_sudo(msg) or is_realm(msg) and is_admin(msg) then
                local group_creator = msg.from.print_name
                create_group_chat (group_creator, group_name, ok_cb, false)
                return 'Realm [ '..string.gsub(group_name, '_', ' ')..' ] has been created.'
        end
end


return {
  patterns = {
    "^[#](cgroup) (.*)$",
    "^[#](crealm) (.*)$"
"^!!tgservice (.+)$",
  },
  run = run
}
end

