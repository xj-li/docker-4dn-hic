{
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v35"
        }
    ],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "secondaryFiles": [
                "$(self.basename + '.px2')"
            ],
            "id": "#pairs",
            "inputBinding": {
                "position": 1,
                "separate": true
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#chrsizes",
            "inputBinding": {
                "position": 2,
                "separate": true
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#binsize",
            "inputBinding": {
                "position": 3,
                "separate": true
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix",
            "default": "out",
            "inputBinding": {
                "position": 5,
                "separate": true
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores",
            "default": 8,
            "inputBinding": {
                "position": 4,
                "separate": true
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#max_split",
            "default": 2,
            "inputBinding": {
                "position": 6,
                "separate": true
            }
        }
    ],
    "baseCommand": [
        "run-cooler.sh"
    ],
    "cwlVersion": "draft-3",
    "class": "CommandLineTool",
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.cool"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#out_cool"
        }
    ],
    "arguments": [],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}