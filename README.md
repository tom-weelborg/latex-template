# latex-template

For a full example, check out [this repository](https://github.com/tom-weelborg/latex-template-example).

## Requirements

You need a [LaTeX](https://www.latex-project.org/) distribution.
I recommend [MiKTeX](https://miktex.org/download).

You also need to set up <code>minted</code>.
This may be trickier.
The docs can be found [here](https://tug.ctan.org/macros/latex/contrib/minted/minted.pdf).

Despite following the docs however, I ran into [this issue](https://github.com/MiKTeX/miktex/issues/1538).
To fix that, I first manually reinstalled the [minted package](https://ctan.org/pkg/minted) in the [MiKTeX console](https://miktex.org/howto/miktex-console).
Thereafter, I made sure that I had added [Python](https://www.python.org/) and its <code>Scripts</code> folder to <code>PATH</code>.
Then I manually installed the [latexminted package](https://pypi.org/project/latexminted/) like this:
```sh
pip install latexminted
```
Finally, I restarted my IDE and it worked.

## Usage

In general, changes to this template can be limited to the contents of three directories:
- [shared](./shared)
- [appendix](./structure/appendix)
- [content](./structure/content)

All other files can be left as they are.
Lists are included dynamically.
For example, if there is no listing, there will be no list of listings.
If there is at least one listing, there will be a list of listings.
Therefore, there is no need to tamper with files regarding the list of listings.

Customizable aspects are explained [here](#configuration).

## Configuration

Language can be customized [here](./styles/language.sty).

Configuration options can be changed in [constants.tex](./shared/constants.tex).

<table>
    <thead>
        <tr>
            <th>
                Constant name
            </th>
            <th>
                Possible values
            </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                <code>listpagestyle</code>
            </td>
            <td>
                <code>plain</code> (default)
                <br>
                <code>empty</code>
            </td>
        </tr>
        <tr>
            <td>
                <code>listtoctype</code>
            </td>
            <td>
                <code>section</code> (default)
                <br>
                <code>chapter</code>
            </td>
        </tr>
    </tbody>
</table>
