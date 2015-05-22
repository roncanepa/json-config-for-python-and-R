import json

json_fh = open("config.json")
config = json.load(json_fh)

for key in config:
    print "%s is %s ( %s ) " %  (key, config[key], type(config[key]))

for i in range(len(config["table_map"])):
    print "%s maps to %s" % (config["table_map"][i]['s'], config["table_map"][i]['u'])
