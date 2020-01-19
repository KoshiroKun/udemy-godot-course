# Udemy Godot Course

My progress on [Udemy's Godot Course](https://www.udemy.com/course/godot/)

## Basic Concepts

### Nodes

Nodes are fundamental building blocks for creating a game, they can perform a variety of specialized function. However, any given node always has the following attributes:

- A name.
- Editable properties.
- Can recieve a callback to process every frame.
- Can be extended (to have more functions).
- Can be added to another node as a child.

Nodes can have other nodes as children, forming a **tree**.

**The naming convention for nodes is CamelCase.**

### Scenes

A scene is composed of a group of nodes organized hirearchically (tree). Any given node always has the following attributes:

- One root node.
- Can be saved to disk and loaded back.
- Can be instanced.

Running a game means running a scene, and a game may has multiple scenes.

### Scripting

In Godot are available the following languages:

- GDScript
- VisualScript
- .NET / C#
- GDNative / C++

### Signals

Signals are Godot's version of the observer pattern. They allow a node to send out a message that other nodes can listen for and respond to.

Signals are a way to decouple your game objects, which leads to better organized and more manageable code.

Many of Godot's built-in node types provide signals you can use to detect events.

## GDScript Basic Concepts

GDScript is a high level, dynamically typed programming language. It uses a syntax similar to **Python**.

GDScript example:

```python
    # A file is a class!

    # Inheritance

    extends BaseClass

    # (optional) class definition with a custom icon

    class_name MyClass, "res://path/to/optional/icon.svg"

    # Member Variables

    var a = 5
    var s = "Hello"
    var arr = [1, 2, 3]
    var dict = {"key": "value", 2:3}
    var typed_var: int
    var inferred_type := "String"

    # Constants

    const ANSWER = 42
    const THE_NAME = "Charly"

    # Enums

    enum {UNIT_NEUTRAL, UNIT_ENEMY, UNIT_ALLY}
    enum Named {THING_1, THING_2, ANOTHER_THING = -1}

    # Built-in Vector Types

    var v2 = Vector2(1, 2)
    var v3 = Vector3(1, 2, 3)

    # Function

    func some_function(param1, param2):
        var local_var = 5

        if param1 < local_var:
            print(param1)
        elif param2 > 5:
            print(param2)
        else:
            print("Fail!")

        for i in range(20):
            print(i)

        while param2 != 0:
            param2 -= 1

        var local_var2 = param1 + 3
        return local_var2

    # Functions override functions with the same name on the base/parent class.
    # If you still want to call them, use '.' (like 'super' in other languages).

    func something(p1, p2):
        .something(p1, p2)

    # Inner Class

    class Something:
        var a = 10

    # Constructor

    func _init():
        print("Constructed!")
        var lv = Something.new()
        print(lv.a)
```

Specific GDScript basics can be found [here](https://docs.godotengine.org/en/stable/getting_started/scripting/gdscript/gdscript_basics.html).

### Exports

The keyword `export` follwing a variable made the variable visible and editable in the Godot editor. This way, artists and game designers can modify values that later influecen how the program runs without open the code.

### onready

When using nodes, it's common to desire to keep references to parts of the scene in a variable. As scenes are only warranted to be configured when entering the active scene tree, the sub-nodes can only obtained when a call to `Node._ready()` is made. The `onready` keyword defeers initialization of a member variable until `_ready` is called.

## Physics

In game development, you often need to know when two objetcs in the game intersect or come into contact. This is known as **collision detection**. When a collision is detected, you typically want something to happen. This is known as **collision response**.

Godot offers a number of collision objects in 2D and 3D.

### CollisionObject2D

- **StaticBody2D**
  Is not moved by the physics engine, it participates in collision detection, but does not move in response to the collision.
  **When to use:** They are most often used for objects that are part of the environment or that do not need to have any dynamic behavior.

- **RigidBody2D**
  Implements simulated 2D physics. You do not control it directly, but you can apply forces to it (like gravity), the physics engine will calculate the resulting movement.
  **When to use:** Great for objects that are moved by something else, not great for player control.

- **KinematicBody2D**
  Provides collision detection, but no physics. All movement and collision response must be implemented in code.
  **When to use:** Player controller

#### Movement

- `move_and_collide()`
  - When you hit something, stop
  - Can get collision information on whatever it hits
  - Doesn't automatically use `delta`
- `move_and_slide()`
  - When you hit something, try and move along it
  - Can detect floors, walls and ceilings
  - Automatically uses `delta` when moving

### Collision Layers

### Collision Masks
