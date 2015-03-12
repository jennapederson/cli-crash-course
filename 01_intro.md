# Intro

## What is so great about the command line?
- The command line gives us power.
- The command line gives us productivity.
- The command line is reliable.
- The command line crosses the bounds of your computer.

Many tools you may be familiar with - your IDE, Finder/Windows Explorer, SourceTree, Photoshop, etc. - abstract these bits away from us so that we don't need to be concerned about how and why they work the way they do. In some cases, this is great and it’s exactly what we want. But understanding the command line and knowing how to use it can actually provide us benefit.

## Benefits

### The command line gives us power.
- You get to tell the computer exactly what you want it to do.

### The command line gives us productivity.
- Instead of navigating through a bunch of menus and screens with your mouse and tabbing back and forth between different applications, you type the commands. Your fingers never have to leave the keyboard. This might seem minor, but it’s actually HUGE in terms of productivity.
- Graphical UIs can take up more computer resources than the command line.

### The command line is reliable.
- Some of these commands have been around since the 1970s. They change less frequently than our graphical UI counterparts. And the graphical UI counterparts quite often are using these same or similar commands under the covers.
- They work the same across operating systems. Graphical tools very often do not, if they are even supported on all OSs.

### The command line crosses the bounds of your computer.
- What if your datacenter is in New York and you reside in Minneapolis? How do you restart that web server? Fly to New York? Nope. You use the power of the command line and the Internet to run that command remotely.

As an example, what if you had a folder of 100 files that all needed to be renamed consistently? Would you use the Finder and rename them all manually? Yuck. We have better things to be doing. What if you could automate this at the command line?

```
for file in *.png; do mv "$file" "${file/_h.png/_half.png}"; done
```

What if you needed to resize a bunch of photos to 100x100? You could probably use Photoshop (and you Photoshop wizards can probably do this faster than I can type the line below). But what if you don’t have Photoshop or even want to open up the app? What if you’re on a server and there are no graphical tools? ImageMagick and a bash for loop to the rescue:

```
for file in *.png; do convert $file -resize 100x100 100x100-$file; done
```

Additionally, many technical documents, tutorials, how to docs assume some knowledge of the command line. Some of the best development tools are specifically meant to run at the command line and not through a graphical interface - grunt, apache, node, etc.

[Setup](setup.md)	[Getting Started](02_getting_started.md)
