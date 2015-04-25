# PHPSimilaritiesExtension

A PHP extension written in Zephir that contains a few similarities algorithms such as Cosine, Jaccard and Euclidean. The algorithms work with double arrays or strings as data input. 

## Setting up the Zephir project

1. Install Zephir by following these steps: http://zephir-lang.com/install.html
2. Initialize the working directory by typing: zephir init similarities; more details of how to init the working place are here: http://zephir-lang.com/tutorial.html
3. Then clone this repo to "similarities" directory within the above created working space

## Installing the extension

The extension is automatically installed on the computer where you are doing the development.
In order to install it on a different machine, just copy the generated extension (.so) under PHP extensions directory, then add it to php.ini. You may want to run a phpinfo() on that machine to see where the extension dir and php.ini file are located.

## Usage

Please see the examples repository: https://github.com/ZitecCOM/PHPSimilaritiesExamples

## License

This software runs under New BSD License. You can find a copy of the license in [LICENSE.txt](LICENSE.txt)