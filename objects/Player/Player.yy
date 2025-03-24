{
  "$GMObject":"",
  "%Name":"Player",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":8,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":2,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":1,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":73,"eventType":8,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"Player",
  "overriddenProperties":[],
  "parent":{
    "name":"Objects",
    "path":"folders/Objects.yy",
  },
  "parentObjectId":null,
  "persistent":true,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"red","filters":[],"listItems":[],"multiselect":false,"name":"red","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"[1,126/255,94/255]","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"green","filters":[],"listItems":[],"multiselect":false,"name":"green","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"[0,1,193/255]","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"blue","filters":[],"listItems":[],"multiselect":false,"name":"blue","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"[0,123/255,1]","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"grav","filters":[],"listItems":[],"multiselect":false,"name":"grav","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":".6","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"fric","filters":[],"listItems":[],"multiselect":false,"name":"fric","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":".94","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"controller","filters":[],"listItems":[],"multiselect":false,"name":"controller","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"anim","filters":[],"listItems":[],"multiselect":false,"name":"anim","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"walkspeed","filters":[],"listItems":[],"multiselect":false,"name":"walkspeed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":".55","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"jumpbuffer","filters":[],"listItems":[],"multiselect":false,"name":"jumpbuffer","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"coyote","filters":[],"listItems":[],"multiselect":false,"name":"coyote","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"timer","filters":[],"listItems":[],"multiselect":false,"name":"timer","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"maxjumps","filters":[],"listItems":[],"multiselect":false,"name":"maxjumps","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"4","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"jumps","filters":[],"listItems":[],"multiselect":false,"name":"jumps","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"maxjumps","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"deadzone","filters":[],"listItems":[],"multiselect":false,"name":"deadzone","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":".1","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"jumping","filters":[],"listItems":[],"multiselect":false,"name":"jumping","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"kickbuffer","filters":[],"listItems":[],"multiselect":false,"name":"kickbuffer","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"kickangle","filters":[],"listItems":[],"multiselect":false,"name":"kickangle","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"flash","filters":[],"listItems":[],"multiselect":false,"name":"flash","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"iframes","filters":[],"listItems":[],"multiselect":false,"name":"iframes","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"xvel","filters":[],"listItems":[],"multiselect":false,"name":"xvel","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"yvel","filters":[],"listItems":[],"multiselect":false,"name":"yvel","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"men","filters":[],"listItems":[],"multiselect":false,"name":"men","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"3","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"points","filters":[],"listItems":[],"multiselect":false,"name":"points","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"lavacombo","filters":[],"listItems":[],"multiselect":false,"name":"lavacombo","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"comboleeway","filters":[],"listItems":[],"multiselect":false,"name":"comboleeway","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"charge","filters":[],"listItems":[],"multiselect":false,"name":"charge","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"startpressed","filters":[],"listItems":[],"multiselect":false,"name":"startpressed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"1","varType":0,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"StarwalkSpr",
    "path":"sprites/StarwalkSpr/StarwalkSpr.yy",
  },
  "spriteMaskId":{
    "name":"StaridleSpr",
    "path":"sprites/StaridleSpr/StaridleSpr.yy",
  },
  "visible":true,
}