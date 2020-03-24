{
    "id": "0a2e6ded-ea66-482b-a820-6988e897d724",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_parent_door",
    "eventList": [
        {
            "id": "77766527-1696-44a8-b733-38781e49280e",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "c3a2e79f-7fa7-49e6-9e38-be7cb3f74509",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "0a2e6ded-ea66-482b-a820-6988e897d724"
        },
        {
            "id": "ef12e843-18d3-4b90-8248-7e9ee95b2d64",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "494a3b31-2be4-4d43-af7e-ccfda5808574",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "0a2e6ded-ea66-482b-a820-6988e897d724"
        },
        {
            "id": "f4b7f984-8907-4b07-a9de-d3a52533650a",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "0a2e6ded-ea66-482b-a820-6988e897d724"
        },
        {
            "id": "d2be0ace-218c-41db-8061-c5ac56f96ed2",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "0a2e6ded-ea66-482b-a820-6988e897d724"
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
            "id": "1d204bb3-8cf3-404b-b72c-bb8baf0251ec",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "name",
            "varType": 0
        },
        {
            "id": "3cea3bdd-1cc8-4f21-be23-c1f7ad581951",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "spr_door",
            "varName": "door_sprite",
            "varType": 0
        },
        {
            "id": "07c40dec-a3f0-481c-8125-d082e936f601",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.1",
            "varName": "openingSpeed",
            "varType": 0
        },
        {
            "id": "633dae87-63b8-415b-acc0-2d0c8121e976",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.05",
            "varName": "closingSpeed",
            "varType": 0
        },
        {
            "id": "310597c5-17be-41ca-80af-77c463102469",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "DOORSTATE.closed",
            "varName": "state",
            "varType": 0
        },
        {
            "id": "724d6349-e312-4e58-aea9-0f60202c7ef6",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "openX",
            "varType": 0
        },
        {
            "id": "bf3dd74a-f8b4-4f7d-95b2-d626193ed2d9",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "openY",
            "varType": 0
        },
        {
            "id": "516e9358-a6c5-4431-ac84-e6ded1b09ae7",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "noone",
            "varName": "unlockKey",
            "varType": 2
        },
        {
            "id": "e22d0cb4-1b9b-4c99-afaf-e80a4b10a397",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "openTime",
            "varType": 0
        },
        {
            "id": "94c6b5b5-0142-40dd-a3f5-b0fedd2adada",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "closeTime",
            "varType": 0
        },
        {
            "id": "253a6212-da00-4a3a-96aa-41ae58830a93",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "doorTimer",
            "varType": 0
        },
        {
            "id": "1019faff-8033-436b-a7e0-867dd7da9ddf",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "eatsKey",
            "varType": 3
        }
    ],
    "solid": true,
    "spriteId": "58853dbd-634e-4c6f-9b13-b09b318fef84",
    "visible": true
}