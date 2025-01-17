# Team CV

## Overview

Maintaining up-to-date, shareable team portfolios can be a challenge for small services companies. This repository offers a streamlined solution, enabling you to centralize and standardize your team's profiles while automating the creation of professional PDF CVs. Built using [RenderCV](https://github.com/rendercv/rendercv/tree/main) with a custom organizational template, it’s designed to save time and effort.

## Features

- Centralized repository for all of team members profiles
- Automated PDF generation using GitHub Actions
- Fully customizable templates for a consistent, professional look
- Easy to update and maintain

## Quick Start

1. **Fork the Repository:** Fork this repo to your organization’s GitHub account.
2. **Customize Template:** Edit the `config.yaml` and files in `orgtemplate` in the /data folder to match your brand and needs. See `Customizing the Profile Template` section below for details.
3. **Create Profiles:** Ask team members to submit their profiles as YAML files via pull requests.
4. **Automate PDF Generation:** GitHub Actions will automatically generate PDF profiles within the PR.
5. **Review and Merge:** Review and merge the PR to keep profiles up to date in the /profiles folder.

## YAML Format

The profile format is based on the RenderCV engine. Sample YAML files are provided in the `/data` folder (e.g., sample_profile_1.yaml). For detailed guidance on the structure, visit the [RenderCV yaml structure](https://docs.rendercv.com/user_guide/structure_of_the_yaml_input_file) documentation.

## Customizing the Profile Template

You can tailor the profile template to meet your organization’s needs by editing the `/data/config.yaml` file. Key configurable options include:

- **Design:** Controls the overall layout and style.
- **Locale:** Manages locale-specific attributes for profiles.
- **company_logo.jpg**: Replace this with your organisation logo. If you are going to have a differrent name for the logo file, update accordingly in `/data/orgtemplate/Header.j2.typ` file

By centralizing these settings, individual profiles inherit a consistent design, making your team's CVs uniform and professional.
