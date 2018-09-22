function custom_prompt()
  os.setlocale ("", "time")
  local cwd = clink.get_cwd()
  local prompt = "\x1b[1;32m{cwd} {git}{hg} \n\x1b[30m{time}\n{lamb} \x1b[0m"
  local new_value = string.gsub(prompt, "{cwd}", cwd)
  local add_time = string.gsub(new_value, "{time}", os.date("%x - %X"))
  local icn = "\x1b[1;35m(ツ)"
  clink.prompt.value = string.gsub(add_time, "{lamb}", icn)
end

clink.prompt.register_filter(custom_prompt, 1)