"""
File: test.py
Author: Alexander Nano
Email: wilso692@purdue.edu

Description:
    Test file for nanoml-template.
"""
from template import main, download_dataset, upload_dataset
if __name__ == "__main__":
    #my_name = None # Insert your name here

    print("Testing nanoml-template.\n")
    main.main()
    #upload_dataset.main(my_name)
    download_dataset.main(my_name)
    print("Done!")