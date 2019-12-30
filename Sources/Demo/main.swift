// This demo contains a Swift implementation of the 

import Chipmunk

var space = cpSpaceNew()
var gravity = cpv(0, -980)
cpSpaceSetGravity(space, gravity)

var ground = cpSegmentShapeNew(cpSpaceGetStaticBody(space), cpv(-20, 5), cpv(20, -5), 0)
cpShapeSetFriction(ground, 1)

cpSpaceAddShape(space, ground)

let radius: cpFloat = 5
let mass: cpFloat = 1

let moment = cpMomentForCircle(mass, 0, radius, cpvzero)

var ballBody = cpSpaceAddBody(space, cpBodyNew(mass, moment))
cpBodySetPosition(ballBody, cpv(0, 15))

var ballShape = cpSpaceAddShape(space, cpCircleShapeNew(ballBody, radius, cpvzero))
cpShapeSetFriction(ballShape, 0.7)

let timestep: cpFloat = 1.0/60.0
for i in 0..<60*2 {
    let time = cpFloat(i) * timestep
    let pos = cpBodyGetPosition(ballBody)
    let vel = cpBodyGetVelocity(ballBody)
    print("t[\(time)]: \tpos: \(pos.x) \(pos.y) \tvel: \(pos.x) \(vel.y)")
    cpSpaceStep(space, timestep)
}

cpShapeFree(ballShape)
cpBodyFree(ballBody)
cpShapeFree(ground)
cpSpaceFree(space)

