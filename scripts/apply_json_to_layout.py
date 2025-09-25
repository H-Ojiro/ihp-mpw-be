#! /usr/bin/env python3

"""
apply_json_to_layout
Uses klayout to modify the "input_layout" file according to the instructions
in the "json_file" and writes the results to "output_layout".
"""

import argparse
import json
import pya

def apply_json_to_layout(input_layout: str, json_file: str, output_layout: str):
    layout = pya.Layout()
    layout.read(input_layout)

    dbu = layout.dbu  # database units (nm per grid step)

    with open(json_file) as f:
        updates = json.load(f)

    for cell_name, actions in updates["cells"].items():
        print(f"Processing cell: {cell_name}")
        cell = layout.cell(cell_name)

        for action in actions:

            if "comment" in action: # skip comments
                continue

            layer_num = action["layer"][0]
            datatype = action["layer"][1]
    
            # Find or create layer
            layer_index = layout.find_layer(layer_num, datatype)
    
            if layer_index < 0: #create layer index if it doesn't exist
                layer_index = layout.insert_layer(pya.LayerInfo(layer_num, datatype))
            shapes = cell.shapes(layer_index)
    
            if action["action"] == "delete":
                if action["type"] == "label":
                    for s in list(shapes.each()):
                        if s.is_text() and s.text.string == action["text"] and s.text.trans.disp.x == action["x"] and s.text.trans.disp.y == action["y"]:
                            shapes.erase(s)
                elif action["type"] == "box":
                    x1, y1, x2, y2 = action["box"]
                    for s in list(shapes.each()):
                        if s.is_box():
                            box = s.box()
                            if box.left == x1 and box.right == x2 and box.bottom == y1 and box.top == y2:
                                shapes.erase(s)
                else:
                    pass
    
            elif action["action"] == "add":
                if action["type"] == "box":
                    x1, y1, x2, y2 = action["box"]
                    shapes.insert(pya.Box(x1, y1, x2, y2))
                elif action["type"] == "label":
                    shapes.insert(pya.Text(action["text"], pya.Trans(action["x"], action["y"])))
                else:
                    pass

    layout.write(output_layout)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Applies the changes described in a json file to a gds/oas file')
    parser.add_argument('--input_file', '-i', required=True, help='Input layout file')
    parser.add_argument('--json_file', '-j', required=True, help='JSON instruction file')
    parser.add_argument('--output_file', '-o', required=True, help='Output layout file')
    args = parser.parse_args()
    apply_json_to_layout(args.input_file, args.json_file, args.output_file)

