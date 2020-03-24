{
    "id": "494a3b31-2be4-4d43-af7e-ccfda5808574",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_parent_enemy",
    "eventList": [
        {
            "id": "0db0b354-17f4-42e0-9f4e-be85874b412a",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "494a3b31-2be4-4d43-af7e-ccfda5808574"
        },
        {
            "id": "ff1512fb-7b00-4883-9fe2-2ffe8d2a3957",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "c1a5d6e1-2ad5-49c4-adef-8134a1ca40f3",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "494a3b31-2be4-4d43-af7e-ccfda5808574"
        },
        {
            "id": "f8815f3e-785c-487e-aec7-68d18b2c994d",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "494a3b31-2be4-4d43-af7e-ccfda5808574"
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
            "id": "655bae3c-f276-40c2-b31f-497a9c1274c0",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "ENEMYSTATE.idle",
            "varName": "state",
            "varType": 4
        },
        {
            "id": "82f070a9-88cf-435a-ae7c-bf7cd6e74d44",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "layer_tilemap_get_id(\"Collisions\");",
            "varName": "collision_map_id",
            "varType": 4
        },
        {
            "id": "63259a57-65e6-4d7f-99f7-a67b8f0e9de3",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "walkSpeed",
            "varType": 0
        },
        {
            "id": "d7298698-7ecd-48b1-8efd-6abafb7efd1c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "attackRange",
            "varType": 0
        },
        {
            "id": "f6430ba1-ecc2-4e66-9647-a30e51d31414",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "attackPower",
            "varType": 0
        },
        {
            "id": "dcdcb24a-f2b1-4623-b4a5-c69cf502b056",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "attackCooldown",
            "varType": 0
        },
        {
            "id": "ce92a6e1-97d8-4f73-bbb0-694052d724d4",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "detectionDistance",
            "varType": 0
        },
        {
            "id": "2563ff0e-80ef-4254-8434-bffbb1bf63d6",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "attentionTime",
            "varType": 0
        },
        {
            "id": "a5343539-3614-44b0-b371-144f560af73b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "maxAttentionTime",
            "varType": 0
        },
        {
            "id": "d95146ac-a198-4d30-976d-798d762a2f10",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "currentCooldown",
            "varType": 0
        },
        {
            "id": "8af96914-229f-4365-8c64-2696af9804d4",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "reloading",
            "varType": 0
        },
        {
            "id": "8e6377d3-b9ff-443e-b949-ea4e0be85110",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "sprite_idle",
            "varType": 0
        },
        {
            "id": "8646cf09-60ba-45ca-bac2-9027f6c85b49",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "sprite_attack",
            "varType": 0
        },
        {
            "id": "d4b0c2d2-8399-4b06-b868-34c9454c7209",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "sprite_melee",
            "varType": 0
        },
        {
            "id": "e90325b0-4b4b-4852-a753-e46b796faaf7",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "sprite_melee_hitbox",
            "varType": 0
        },
        {
            "id": "2883c5df-a419-4c41-ba46-c322732a65a5",
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
            "id": "0ea70333-6f9a-4e73-9818-b3a03bb40a96",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "meleeDamage",
            "varType": 0
        },
        {
            "id": "794e4e28-2ba8-4c5f-bf9c-843c90e5c08c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": " ds_list_create()",
            "varName": "hitList",
            "varType": 4
        },
        {
            "id": "600081e2-d6a0-492a-a5e8-c141c9c2a867",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "bloodType",
            "varType": 4
        },
        {
            "id": "15133c59-32ef-45bc-a363-f97abc166018",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "ds_list_create()",
            "varName": "inventory",
            "varType": 0
        },
        {
            "id": "2c955100-1ffd-45b7-8fc6-46fbb58d9ceb",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "True",
            "varName": "canshoot",
            "varType": 3
        },
        {
            "id": "b4cb1045-07dd-4fdc-bb26-44f311692079",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "5",
            "varName": "idealDistance",
            "varType": 0
        },
        {
            "id": "665ded10-8804-439a-9a39-ed873d549972",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "bulletSpawnOffsetX",
            "varType": 0
        },
        {
            "id": "48856291-56e7-49e9-9ae2-197eb582d73a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "bulletSpawnOffsetY",
            "varType": 0
        },
        {
            "id": "db14362d-49d2-4521-8d34-c12ccd42aa5f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "armor",
            "varType": 0
        }
    ],
    "solid": true,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}