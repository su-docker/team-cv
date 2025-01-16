# Team CV

The pain of maintaining shareable portfolios of the team for a small services company made me create this repo. I hope others running botique services shops will benefit from this. This repo is using [rendercv](https://github.com/rendercv/rendercv/tree/main) with custom template for an organisation (data/org_template)

## How it works

Every person's profile information is stored in their corresponding yaml files under data folder. There is a predefined format expected for this yaml file (which can be found in rendercv documentation). Once the yaml file is updated, running the `generate_profile.sh` script will create the pdf under `profiles` folder

### Adding new team members

1. Create a copy of the `data/sample_profile.yaml` under the same folder and rename it to your new team member's name
2. Edit the new file to put in all their work history and other required details
3. Run `./generate_profile.sh data/<your_file>.yaml`
4. If there are any yaml errors, it will be printed on the console. Fix them appropriately.
5. On successful run, your profile pdf file will be created under `profiles` folder.

## TODO

1. Add github action to automatically run the above command on the yaml files changed in each commit
2. Push the generated pdf file into Tarka Labs sharepoint folder for sales team to easily access and share the PDF profiles
