# Resume_Template_2

*This Readme file has been copied from my other repository: [Resume_Template](https://github.com/DusDus3428/LaTeX_Resume_Template). This template is in essence a variation if that original one. The difference is that this one just has a side bar and a main section, and no header section.*

Creating a good resume these days is very important. With the amount of applications a hiring manager or recruiter recieves, it's no wonder that they can only spare a few seconds of their time to determine if you could be a good fit.
So it is very important that your resume stands out from the rest.

Because of this, I decided to create my resume with LaTeX, a tool heavly used in academia, especially within the mathematics and science sectors. Similar to HTML/CSS, you can create your document using a .tex file, and you can style it using a .cls file.

This repository offers you a template for a resume created using LaTeX. Feel free to fork or download this template, and I encourage you to personalize it so that it really reflects who you are (I forked it myself in a private repository in order to do just that).

## Setting up LaTeX for Windows

1. Download and install MikTeX from here: [MikTeX](https://miktex.org/download)
2. Download and install Texmaker from here: [Texmaker](https://www.xm1math.net/texmaker/download.html)
3. Open resume_template.tex in Texmaker (if you like, you can also open resume_template.cls)
4. Click on the drop-down arrow in the **Quick Build** box and select **LuaLaTeX** 
    * Click on the large sideways arrow to the left of the same box to generate the PDF
	* Check the logs at the bottom and make sure no errors occur
5. Click on the large sideways arrow to the left of the **View PDF** box to see the generated PDF file in the PDF viewer
    * If this does not work, then click on the PDF Viewer tab located at the bottom left corner
	* You can also find the PDF file in your local repository folder after a successful generation

## The Set-up

Apart from your personal photo, there are only two files that really matter here:
- resume_template.tex 
  This file contains the basic layout elements and the content that they carry. So, this is where you should replace all the lorem ipsum blindtext and other placeholder values with your own content. Beware: I used a lot of custom commands to unclutter the document (you can find these commands in the .cls files). I did this so one can concentrate solely on the content in this document. 
- resume_template.cls 
  This file contains all the package declarations, document, font, and layout settings, and also some new commands for some certain resume-specific aspects of the document (see these in action in the .tex document in order to get a better understand about how to use them). This file is where you can personalize the design at your leisure.  

## Things to Configure

- Change the photo to a professional image of yourself (and feel free to delete folder.png)
- Change the title to include your name and job title
- Change the contact information
- Use the \skill command to showcase your skills and skill levels using horizontal bars 
- Remove all the \loremispum \lorem \ut \duis commands since they are blindtext commands, and replace them with your resume content
- Personalize the design (as mentioned above, even I created a private fork of this repository in order to adjust the design to better represent who I am. I would not rely on this template alone)
    * Change the font if you like. Just make sure you own a license for the font you are using, if it is not a free font, that is. Here is a helpful website in my opnion: [FontCatalogue](https://tug.org/FontCatalogue/)
	* Change the colors. Grey is not really suitable if you want to stand out from the crowd
	* Add new sections or change/remove existing ones
	* Change the layout if you like. Feel free to re-use, change, improve, or even discard anything you like. It's your resume after all. Just know that layout changes could of course break the entire structure

## How I Approached it

- I created this template using this guide here: [Make a great looking CV (or resume) using Latex](https://www.youtube.com/watch?v=-TRcPIPkZz8).
  In the end I deviated form that design quite a bit. For instance, I chose to use \tcbraster for the entire document layout instead of using nested tcolorboxes and minpages. It's still definitely worth watching, unless you've never touched LaTeX before. In that case I recommend you do a tutorial or a course first.
- A **LOT** of research.
  [CTAN](https://ctan.org/) and [TeX Stackexchange](https://tex.stackexchange.com/) are the best sources in my opinion. Especially CTAN because it also offers documentation for most, if not all, LaTeX packages.
- A **LOT** of trial and error.
  There is no getting around this, I'm afraid. The end result will be worth it though, trust me.
