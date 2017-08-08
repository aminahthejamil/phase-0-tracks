# Git Definitions

**Instructions: ** Define the following Git concepts.

* What is version control?  Why is it useful?
  * Version control is the ability to see the revision history of the same document or file in its multiple versions, as well as merge the documents/files at some point in the future to create one cohesive file.
  * It is useful because it allows teams working on a major project to see the history of the revisions to that project, as well as revert to a previous revision in the unfortunate case of a bug or other issue.
* What is a branch and why would you use one?
  * A branch is essentially an extension of a particular (master) file or project where a programmer is able to make changes, add, or remove aspects of that file or project without it affecting the original (master). At some point, the extension, or branch, can be merged with the original to create a new file or project.
  * We use branching to add, remove, or change a file, and to see how the changes would work in that sort of limbo environment, before merging the changes with the very important master file.
* What is a commit? What makes a good commit message?
  * A commit is a save point for a file in a repository. Committing a file doesn't save the file, it only acknowledges that you are making that specific point a point that a change was made; you save the file in the editor and then commit the change to git.
  * A good commit message allows team members or other people who will be viewing the repository to understand exactly what change was made.
  * For example, if you added a new font family to a CSS stylesheet for a particular div class in an HTML file, you would say something like "Add Monaco font to thisClass"
* What is a merge conflict?
  * A merge conflict occurs when there is a branch or file that two people are working on. Either one person deletes the branch/file and the other person is still working on it OR they both change the same thing in the file and git does not know which one is the right one. 
