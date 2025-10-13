# Template Repository for OSP Modules

This repository provides an annotated module skeleton for templating new tutorial module repositories within the Open
Statistical Programming Tutorials organization.

## Using the Template to Create a New OSP Module

### Preparing the GitHub Repository

1. Create a new repository, say `my-module-repo`, on GitHub.
   - Set the repository owner as the `open-stat-prog` organization.
   - Select the `open-stat-prog/module-template` as the repository template.
1. Fork `open-stat-prog/my-module-repo` into your personal GitHub account, `https://github.com/My_GitHub_Username`.
1. Clone `My_GitHub_Username/my-module-repo` onto your local machine.
   - Let's say you name your local clone `my-local-repo`.
1. Navigate to the root directory of `my-local-repo`.
1. Add an upstream git remote linking back to `https://github.com/open-stat-prog/my-module-repo`.

   ```
   git remote add upstream https://github.com/open-stat-prog/my-module-repo.git
   ```

### Preparing the renv Project

1. Activate the **renv** project.
   - Source `R/init_project.R` from the root directory of `my-local-repo`.
   - If you're using **RStudio**, open `R/init_project.R` and click the "Source" button in the RStudio GUI.

1. Restore the project library.
   - Source `R/restore_library.R` from the root directory of `my-local-repo`.

> [!NOTE]
> If you use `make` to build software, you can simply run `make init` from the root directory of `my-local-repo` to set
> up your **renv** project.

> [!IMPORTANT]
> After activating the **renv** project, the R session needs to restart so that **renv** can take over the package
> management. If the R session does not restart, the second step will not correctly restore the packages in the project
> library.
> 
> In most cases, the session should automatically restart.
>
> - If you source `R/init_project.R` from **RStudio**, the R session should restart automatically.
> - If you run `R/init_project.R` in batch mode (e.g., by calling `RScript R/init_project.R` from the terminal), then
>   the R session dies with your job, so you automatically get a fresh session when you next run R.
> - If you use `make` to set up the project by running `make init`, the session will automatically restart.
>
> However, if you run the scripts interactively or explicitly run `renv::activate()` in an interactive R session, you
> may need to manually restart the R session before restoring the project library.

### Running a Test Render

If the setup described above worked correctly, you should be able to render the website.

- Run `quarto render` from within the project directory to render the template site.
- If you're using **RStudio**, you can render the website by selecting the `Build > Build All` menu option.

This step isn't strictly necessary, but it will confirm that your local project is set up correctly.

## Editing

Assuming the setup process went well, you're now ready to start developing your module. Proceed by replacing the
placeholder content with your own material.

This template repository defines the intended directory structure of new tutorial module repositories, but it also
includes several example/demonstration files and directories that you don't want in your module repository. When 
converting the template content, it's important that you change the correct things, but it's also important that you
keep reserved structural components intact.

### Components to Keep As-Is

Do not change the names or locations of the following files.

- `/index.qmd`
- `/conclusion.qmd`
- `/404.qmd`
- `/in_progress.qmd`
- `/_quarto.yml`
- `/_website.yml`
- `/_variables.yml`
- `/.gitignore`
- `/README.md`
- `/LICENSE`
- `/renv.lock`

Do not change the names or locations of the following directories.

- `/tutorials/`
- `/quizzes/`
- `/quizzes/*/questions/`
- `/html/*`
- `/js/*`
- `/R/*`
- `/assets/`
- `_extensions/*`
- `/renv/*`

### Components to Modify

Replace all placeholder names with meaningful names:

- Replace any occurrence of `module-template` with the name of the OSP Organization's version of your module repo.
   - E.g., `module-template` $\rightarrow$ `my-module-repo`
   - Be sure to make all possible replacements in the `_website.yml` file.
      - `website.url`
      - `navbar.tools`
      - etc.
- Change the website title in `_website.yml` to a substantively appropriate title.
- Adjust the `website.sidebar` section in `_website.yml` as appropriate.
- Change the name of the RStudio project file to match your project name.
   - E.g., `module-template.Rproj` $\rightarrow$ `my-module-repo.Rproj`
- Replace the all occurrences of the directory names `first_tutorial` and `second_tutorial` in the `/tutorials/` and 
`/quizzes/` directories with substantively appropriate names.
- Replace the names and content of (almost) all QMD and RMD files with your module's material.

> [!WARNING]
> Do not change any of the following file names
>
>- `index.qmd`
>- `conclusions.qmd`
>- `404.qmd`
>- `in_progress.qmd`

## Style Guidelines

- Make a reasonable effort to follow the [tidyverse style guide](https://style.tidyverse.org/).
- Use markup features as intended. For example:
   - Use headings as headings.
      - Don't use headings for emphasis.
      - Don't use anything but headings to markup document sections.
   - Use CSS to adjust aesthetics.
      - Don't hack visual structure with inline tweaks.
      - Aesthetics defined through CSS rules have a better chance of remaining consistent when applying different themes.
- Break long lines at 120 characters (approximately).
   - Don't rely on your IDE's visual line breaking feature: actually break the lines in the source code.
   - We don't need to be fanatical about this. A few characters over 120 is fine, but don't let me catch you writing
   entire paragraphs on one line.
- No spaces in file or directory names.
   - Don't be a jerk.
   - This is not negotiable: I will die on this hill!
   - If I find spaces in any of your file paths, I will find you, and I will hurt you.
- Follow a sensible naming convention.
  - Use `snake_case` or `kebab-case` for file and directory names.
  - Use `snake_case` or `lowerCamelCase` for variable names.
  - If you don't have a strong preference, use `snake_case` (almost) everywhere: it's the most portable.
  - Regardless of the above, always use `kebab-case` for CSS classes, HTML attributes, and git repository names.
- Don't get too creative (or lazy) with the directory structure.
   - Make a reasonable effort to use the directory structure defined by the template

## Intellectual Property and Privacy

Be mindful of intellectual property rights and privacy restrictions when incorporating external resources into your module.

- Don't include any materials that you don't have the right to distribute.
   - If the licensing situation is questionable, don't include the content.
- Make a reasonable effort to attribute credit for any resources your incorporate into your module.
   - E.g., by providing a link to the source of third-party images.
- Don't distribute sensitive data with your module.
   - In most cases, this mean you shouldn't be using real-world research data for examples.
   - Prefer publicly available, anonymized data or synthetic data.

## Tools

We rely on several key tools to implement the functionality of these modules. For the most part, the use of these tools
*is not* documented in this template. Refer to the links below for relevant documentation, tutorials, and vignettes.

- [quarto](https://quarto.org/)
   - Each module is a self-contained quarto website project.
- [knitr](https://yihui.org/knitr/)
   - We use **knitr** code blocks to integrate *non-interactive* R code.
- [GitHub Pages](https://pages.github.com/)
   - Each module is hosted as a GitHub Pages site.
- [renv](https://rstudio.github.io/renv/index.html)
   - We use **renv** to manage R package dependencies.
- [R/exams](https://www.r-exams.org/)
   - We use the [**exams**](https://cran.r-project.org/web/packages/exams/index.html) and
   [**exams2forms**](https://cran.r-project.org/web/packages/exams2forms/index.html) R packages to implement knowledge
   quizzes.

### Quarto Extensions

- [quarto-webr](https://quarto-webr.thecoatlessprofessor.com/)
   - We use the **quarto-webr** extension to integrate *interactive* R code blocks.
- [quarto-custom-callouts](https://quarto.thecoatlessprofessor.com/custom-callout/)
   - We use the **quarto-custom-callouts** extension to define bespoke call-out blocks.
- [fontawesome](https://github.com/quarto-ext/fontawesome)
   - We use the **fontawesome** extension to add a touch of class.

## Working Directories

For resolving all file paths, assume the root directory of your module repository is the working directory.

- The quarto website project sets the `project.execute-dir: project` option to enforce this policy for parsing QMD files. 
- The RStudio project file enforces this policy for running R scripts. 

Use the `here()` function from the [**here**](https://here.r-lib.org/index.html) package to simplify relative path
resolution in R code.
