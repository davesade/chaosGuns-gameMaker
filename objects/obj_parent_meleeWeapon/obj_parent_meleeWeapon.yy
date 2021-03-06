{
    "id": "8c16fcf8-b1b6-4a3b-88b8-07c2bf875e3c",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_parent_meleeWeapon",
    "eventList": [
        {
            "id": "5fdb1d03-6e4c-4b62-818a-34d097888816",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "c3a2e79f-7fa7-49e6-9e38-be7cb3f74509",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "8c16fcf8-b1b6-4a3b-88b8-07c2bf875e3c"
        },
        {
            "id": "c14acad1-912f-4f5b-995a-97e1dd379ce0",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 5,
            "eventtype": 7,
            "m_owner": "8c16fcf8-b1b6-4a3b-88b8-07c2bf875e3c"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "5d94f58e-cef1-4ca3-9882-d6ce28b8dbba",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "\"None\"",
            "varName": "name",
            "varType": 2
        },
        {
            "id": "9ce1bb99-d2c2-4db9-b0a4-91092233f283",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "damage",
            "varType": 0
        },
        {
            "id": "d750a230-d771-4480-b367-a35de9144139",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "staggerDMG",
            "varType": 0
        },
        {
            "id": "23959df3-d114-4cc8-b222-a93f46a69fec",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "hearingDistance",
            "varType": 0
        },
        {
            "id": "8a5f1933-e9d9-4042-8963-f4a785b3c1cd",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "criticalChance",
            "varType": 0
        },
        {
            "id": "4c52e90f-7d7d-4947-932e-a155fc0dddbc",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "criticalMultiplier",
            "varType": 0
        },
        {
            "id": "3feadcb1-32a5-40a7-b071-53636f4a3e86",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "meleeDistance",
            "varType": 0
        },
        {
            "id": "c6cba737-cea7-4176-961f-0b48c1385f94",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "melee_sprite_HB",
            "varType": 0
        },
        {
            "id": "9856cfb9-b413-48ff-8a4d-e6d967b6323b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "meleeCooldown",
            "varType": 0
        },
        {
            "id": "3f290183-c91e-489f-8bcb-621454909069",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "pickedUp",
            "varType": 3
        },
        {
            "id": "fe413af1-67a3-4e59-8d63-910684bbc64e",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "10",
            "varName": "knockback",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}