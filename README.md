<a id="readme-top"></a>

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

[contributors-shield]: https://img.shields.io/github/contributors/rohit-lakhanpal/azure-function-csharp.svg?style=for-the-badge
[contributors-url]: https://github.com/rohit-lakhanpal/azure-function-csharp/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/rohit-lakhanpal/azure-function-csharp.svg?style=for-the-badge
[forks-url]: https://github.com/rohit-lakhanpal/azure-function-csharp/network/members
[stars-shield]: https://img.shields.io/github/stars/rohit-lakhanpal/azure-function-csharp.svg?style=for-the-badge
[stars-url]: https://github.com/rohit-lakhanpal/azure-function-csharp/stargazers
[issues-shield]: https://img.shields.io/github/issues/rohit-lakhanpal/azure-function-csharp.svg?style=for-the-badge
[issues-url]: https://github.com/rohit-lakhanpal/azure-function-csharp/issues
[license-shield]: https://img.shields.io/github/license/rohit-lakhanpal/azure-function-csharp.svg?style=for-the-badge
[license-url]: https://github.com/rohit-lakhanpal/azure-function-csharp/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/rohitlakhanpal

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <h3 align="center">
    Azure Function App in C#
  </h3>

  <p align="center">
    powered by
    <br />
    <a href="https://github.com/rohit-lakhanpal/azure-function-csharp">
        <img src="docs/img/logo.png" alt="Logo" height="80">
    </a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#technologies-explored">Technologies Explored</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
    </li>  
    <li>
      <a href="#deployment">Deployment</a>
    </li>
    <li>
      <a href="#roadmap">Roadmap</a>
    </li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#disclaimer">Disclaimer</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
    <li><a href="#references">References</a></li>
  </ol>
</details>


<!-- ABOUT THE PROJECT -->
## About The Project

This project contains an Azure Function App written in C# with one function: an HTTP trigger. It also includes infrastructure as code using Bicep and a CI/CD pipeline with GitHub Actions.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Technologies Explored

Major cloud technologies/frameworks/libraries are listed here:
* [![C#][csharp.com]][csharp-url]
* [![Azure Functions][azurefunctions.com]][azurefunctions-url]
* [![Bicep][bicep.com]][bicep-url]
* [![GitHub Actions][githubactions.com]][githubactions-url]

[csharp.com]: https://img.shields.io/badge/C%23-239120?style=for-the-badge&logo=c-sharp&logoColor=white
[csharp-url]: https://docs.microsoft.com/en-us/dotnet/csharp/
[azurefunctions.com]: https://img.shields.io/badge/Azure%20Functions-0062AD?style=for-the-badge&logo=azure-functions&logoColor=white
[azurefunctions-url]: https://docs.microsoft.com/en-us/azure/azure-functions/
[bicep.com]: https://img.shields.io/badge/Bicep-0078D4?style=for-the-badge&logo=microsoft-azure&logoColor=white
[bicep-url]: https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/
[githubactions.com]: https://img.shields.io/badge/GitHub%20Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white
[githubactions-url]: https://docs.github.com/en/actions


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Getting Started

To get a local copy up and running follow these simple steps.

1. **Pre-Requisites:**

    Ensure you have the **following installed** if you choose to run the project locally:

    * [![Azure CLI][azurecli.com]][azurecli-url]
    * [![Azure Functions Core Tools][azurefunctionscoretools.com]][azurefunctionscoretools-url]
    * [![Docker][docker.com]][docker-url]
    * [![VS Code][vscode.com]][vscode-url]
    * [![Bicep CLI][bicepcli.com]][bicepcli-url]
    * [![.NET SDK][dotnetsdk.com]][dotnetsdk-url]
    * [![Azurite][azurite.com]][azurite-url]

    [azurecli.com]: https://img.shields.io/badge/Azure%20CLI-0089D6?style=for-the-badge&logo=microsoft-azure&logoColor=white
    [azurecli-url]: https://docs.microsoft.com/en-us/cli/azure/install-azure-cli
    [azurefunctionscoretools.com]: https://img.shields.io/badge/Azure%20Functions%20Core%20Tools-0062AD?style=for-the-badge&logo=azure-functions&logoColor=white
    [azurefunctionscoretools-url]: https://docs.microsoft.com/en-us/azure/azure-functions/functions-run-local
    [docker.com]: https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white
    [docker-url]: https://www.docker.com/
    [vscode.com]: https://img.shields.io/badge/VS%20Code-007ACC?style=for-the-badge&logo=visual-studio-code&logoColor=white
    [vscode-url]: https://code.visualstudio.com/
    [bicepcli.com]: https://img.shields.io/badge/Bicep%20CLI-0078D4?style=for-the-badge&logo=microsoft-azure&logoColor=white
    [bicepcli-url]: https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/install
    [dotnetsdk.com]: https://img.shields.io/badge/.NET%20SDK-512BD4?style=for-the-badge&logo=dotnet&logoColor=white
    [dotnetsdk-url]: https://dotnet.microsoft.com/download/dotnet
    [azurite.com]: https://img.shields.io/badge/Azurite-0078D4?style=for-the-badge&logo=microsoft-azure&logoColor=white
    [azurite-url]: https://learn.microsoft.com/en-us/azure/storage/common/storage-use-azurite?toc=%2Fazure%2Fstorage%2Fblobs%2Ftoc.json&bc=%2Fazure%2Fstorage%2Fblobs%2Fbreadcrumb%2Ftoc.json&tabs=visual-studio%2Cblob-storage

1. **Clone the Repository:**
    ```bash
    git clone https://github.com/rohit-lakhanpal/azure-function-csharp.git
    
    cd azure-function-csharp
    ```

1. **Start Azurite**:    
    Ensure you're running [the Azurite emulator for local Azure Storage development](https://learn.microsoft.com/en-us/azure/storage/common/storage-use-azurite?toc=%2Fazure%2Fstorage%2Fblobs%2Ftoc.json&bc=%2Fazure%2Fstorage%2Fblobs%2Fbreadcrumb%2Ftoc.json&tabs=visual-studio%2Cblob-storage). This will be used by the Azure Function App. 
    
    My preference is to use the [Visual Studio Code extension for Azurrite](https://marketplace.visualstudio.com/items?itemName=Azurite.azurite). 

    ```
    Ctrl + Shift + P -> Azurite: Start
    ```

    Remember to stop and clear the Azurite **data after you're done**:

    ```
    Ctrl + Shift + P -> Azurite: Stop
    Ctrl + Shift + P -> Azurite: Clear Data
    ```

1. Start the Azure Function App:
    ```sh
    cd src/App
    func start
    ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Deployment

For deploying the Azure Function App and its infrastructure, you can use the `azd` tool for a streamlined process.

1. Run the following command to deploy:
    ```sh
    azd login
    azd up
    ```

   This command will handle the deployment of both the infrastructure (using Bicep) and the function app.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Roadmap

- [ ] Add local debugging support
- [ ] Add devcontainer support
- [ ] Add more Azure Functions
- [ ] Improve error handling
- [ ] Add unit tests

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. **Fork the Project**: Fork the repo you want to contribute to by clicking the Fork button on the top right corner of the repo page.
1. **Clone the Repo**: Clone the forked repo to your local machine using the command (`git clone URL_OF_FORK`).
2. **Branch**: Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. **Commit**: Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. **Push to the Branch**: (`git push origin feature/AmazingFeature`)
5. **Open a Pull Request**: Go to your forked repo on GitHub and click Contribute and then Open a pull request. Fill out the details of your pull request and submit it.

Learn more about contributing to projects [here](https://docs.github.com/en/get-started/quickstart/contributing-to-projects).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- DISCPLAIMER -->
## Disclaimer

This template is provided "as is" without warranty of any kind, whether express or implied. Use at your own risk! The author will not be liable for any losses or damages associated with the use of this template. 

It is intended to be used as a starting point for your own project and not as a final product.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTACT -->
## Contact

- [Rohit Lakhanpal](https://blog.try-it.dev/author/rohit/) | [@github](https://github.com/rohit-lakhanpal) | rohit@try-it.dev
- Project Link: [https://github.com/rohit-lakhanpal/azure-function-csharp](https://github.com/rohit-lakhanpal/azure-function-csharp)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

These toolkits are never the result of solitary efforts. I wish to extend my heartfelt thanks to my friends, colleagues, and fellow community members for their exceptional contributions. We have built upon your work, and it is your efforts that have laid the foundation for our success. Your work is not only recognised but deeply valued.

* [This amazing ReadME template](https://github.com/othneildrew/Best-README-Template)

TODO: Add acknowledgements.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- REFERENCES -->
## References
* [Azure Functions Documentation](https://docs.microsoft.com/en-us/azure/azure-functions/)
* [Bicep Documentation](https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/)
* [GitHub Actions Documentation](https://docs.github.com/en/actions)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

> <br/> Documentation generated by AI, edited by humans. ❤️ <br/> <br/>


<p align="right">(<a href="#readme-top">back to top</a>)</p>