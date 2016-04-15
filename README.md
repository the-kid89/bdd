# 0-Tech BDD

## Description
An example implementation of a BDD convention for authoring automated specifications with a minimalistic tech footprint. See

## Prerequisites

 - a basic understanding of Behaviour Driven Development [See this blog post](http://adaptechsolutions.ca/behaviour-driven-design-from-the-ground-up-part-1/)
 - a browser (Tested on Chrome/Chromium and Firefox)
 - netcat (can use traditional if wanting the -e parameter to work, careful of the security implications)
 - a reasonably up to date bash

## Usage

### Start the "Framework"

 - Launch the script to serve the page with `./server.sh`.
 - Browse to `http://localhost:5000/specifications.html`.

### Author New DSL Steps

 - Click on the 'new step' button to make a new step that the system will support.
 - Fill out the dialog according to the convention shown in the help balloon.
 - Click the 'save' button.
 - Repeat the steps in this section to make all the building blocks necessary for authoring your specification.

### Create a specification

 - Click on the "New" button above the specifications area.
 - Click anywhere in the new specification area to select it.
 - Find a step you want to use in the available steps section.
 - Click on "Insert" on the step to insert it into the selected specification.
 - Repeat the last 2 steps until you have completed specifying your feature.
 
### Create the Fixtures

 - In the directory where the specification is found, create filter script that will return a 0 if a particular step is matched.
 - Add a script that will call your solution with the parameters supplied in your specification
 - Append to the specification script area the case statement to call the just inserted script.

### Run the Specification

 - Click the "Run" button in a particular specification to run.
 - The specification should turn red indicating that the specification is not yet met.
 - Also the step that failed will be highlighted

### Implement the Production Code

 - To make the specification pass, implement the functionality in your solution.
 - Now when you run your specification and the needed functionality is present, the specifictation should turn green after it's run.

## Contributing

Pull requests will almost immediately be accepted as per Pieter Hintjens' method of working.
To avoid being tied to GitHub, outstanding features are requested in individual branches with a feature or fix file at the root folder. Once it is finished, it is merged into master. To see all outstanding issues that need to be implemented, run `git branch -a --no-merged origin/master`. To see which ones are already worked on, see which ones have more than one commit outside of master.