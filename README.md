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
