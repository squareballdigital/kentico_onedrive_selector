# kentico_onedrive_selector

The OneDrive File Selector was developed by Squareball Digital to integrate OneDrive with Kentico CMS. This is a form control to help your user easily select a file from their OneDrive storage and saved to Kentico CMS as a shared link.

Installation
--------------------
Warning: only tested with Kentico 8.2 Enterprise marketing solution (all modules installed). 
It is strongly recommended you backup your site files and database before carrying out this installation.

1. Copy the supplied files from 'CMSFormControls' to your web root.

2. Run SQL query from 'Create OneDrive File Selector Form Control.sql' file.


Configuration
--------------------
- To set the OneDrive File Selector to live mode, supply your live OneDrive Client ID.
- Go to Admin > Forms > Select a form > Create a text field  > Field appearance > Form control : OneDrive File Selector.
- Fill your OneDrive Client ID in Editing control settings section.
- Ensure your live domain added in Target domain field and Redirect URLs field of Api Settings from Microsoft account Developer Center. https://account.live.com/developers/applications 