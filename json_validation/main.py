from jsonschema import Draft7Validator
import json

with open("schema.json") as f:
    schema = json.load(f)

list_ = [{"name": "jacob", "age": 99}, {"name": "arthur", "age": 28}]

validator = Draft7Validator(schema)

print(list(validator.iter_errors(list_)))
