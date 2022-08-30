<h1 align="center"> 🐳 inception </h1>

<h2 align="center">one container is not enough
<br>
we need to go deeper
</h2>
<br>
<p align="center">
<p align=center>
  <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/aabduvak/inception">
  <img alt="Repository size" src="https://img.shields.io/github/repo-size/aabduvak/inception">
  <img alt="GitHub top language" src="https://img.shields.io/github/languages/top/aabduvak/inception">
</p>

<!-- PROJECT LOGO -->
<br />
<div align="center" style="height:200px; margin-bottom:10%">
  <a>
    <img src="./images/docker_moby.png" alt="Docker logo">
  </a>
</div>

<!-- TABLE OF CONTENTS -->
<summary>Table of Contents</summary>
<ol>
<li>
	<a href="#about-the-project">About The Project</a>
	<ul>
	<li><a href="#built-with">Built With</a></li>
	</ul>
</li>
<li>
	<a href="#getting-started">Getting Started</a>
	<ul>
	<li><a href="#prerequisites">Prerequisites</a></li>
	<li><a href="#installation">Installation</a></li>
	</ul>
</li>
<li><a href="#usage">Usage</a></li>
<li><a href="#contact">Contact</a></li>
<li><a href="#acknowledgments">Acknowledgments</a></li>
</ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

inception is a 42 project, aiming to host a basic wordpress using [Docker](https://www.docker.com/). All dockerfiles and config files are custom created.

#### Skills
- System administration
- Rigor
- Network

#### My grade
<img src="./images/grade.png" width="150" height="150"/>

### Built With

* <a href="https://www.docker.com/" target="_blank" title="Docker's website">Docker</a>

<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

* [Docker and Docker compose](https://docs.docker.com/compose/install/)

### Installation

1. Clone the repo

```sh
git clone https://github.com/aabduvak/inception.git
```

1. Go to repository's folder

```sh
cd inception
```

<!-- USAGE EXAMPLES -->
## Usage

* Build the project and make it available !

```sh
docker-compose -p inception ps
```

* You might want to use this command to show database's tables

```sh
exec mariadb
mysql -u wordpress -p
SHOW DATABASES;
use wordpress
show tables;
```

<!-- CONTACT -->
## Contact

aabduvak - [GitHub](https://github.com/aabduvak)

## Acknowledgments

* [Img Shields](https://shields.io)
* [README.MD-Template](https://github.com/othneildrew/Best-README-Template)
