# latex-template

For a full example, check out [this repository](https://github.com/tom-weelborg/latex-template-example).

## Requirements

You need a [LaTeX](https://www.latex-project.org/) distribution.
I recommend [MiKTeX](https://miktex.org/download).

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
        <tr>
            <td>
                <code>isappendixseparate</code>
            </td>
            <td>
                <code>false</code> (default)
                <br>
                <code>true</code>
            </td>
        </tr>
    </tbody>
</table>
